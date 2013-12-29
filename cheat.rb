require 'formula'

class Cheat < Formula
  homepage 'https://github.com/jahendrie/cheat'
  url 'https://github.com/jahendrie/cheat/archive/646aa57e756a8e65e65377480563dc2d25ee1d77.tar.gz'
  version '0.95'
  sha1 '3d0628da798e4e953af76cec8870d3d7d20c1bb0'

  def patches
    DATA
  end

  def install
    inreplace "Makefile", "$(ROOTPATH)/usr", "#{prefix}"
    inreplace "src/cheat.sh", "/usr/share/cheat", "#{share}/cheat/sheets"
    inreplace "src/cheat.sh", "cat ", "less -X "
    system "make install"
  end
end

__END__
diff --git a/Makefile b/Makefile
index 5476cd4..73c2a4f 100644
--- a/Makefile
+++ b/Makefile
@@ -16,11 +16,13 @@ DATAPATH=$(PREFIX)/share/cheat
 SHEETPATH=$(DATAPATH)/sheets

 install:
-	install -D -m 0755 $(SRC)/$(SRCFILE) $(PREFIX)/bin/$(DESTFILE)
+	install -d -m 0755 $(PREFIX)/bin/
+	install $(SRC)/$(SRCFILE) $(PREFIX)/bin/$(DESTFILE)
 	mkdir -p $(DATAPATH)
 	cp -rv $(DATA) $(SHEETPATH)
-	install -v -D -m 0644 LICENSE $(DATAPATH)/LICENSE
-	install -v -D -m 0644 README $(DATAPATH)/README
+	install -d -m 0755 $(DATAPATH)/
+	install LICENSE $(DATAPATH)/
+	install README $(DATAPATH)/
 	#install -D -g 0 -o 0 -m 0644 $(DOC)/cheat.1 $(MANPATH)/cheat.1

 uninstall:
