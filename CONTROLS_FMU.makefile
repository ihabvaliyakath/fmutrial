# FIXME: before you push into master...
RUNTIMEDIR=/usr/bin/../include/omc/c/
#COPY_RUNTIMEFILES=$(FMI_ME_OBJS:%= && (OMCFILE=% && cp $(RUNTIMEDIR)/$$OMCFILE.c $$OMCFILE.c))

fmu:
	rm -f 757.fmutmp/sources/CONTROLS_init.xml
	cp -a "/usr/bin/../share/omc/runtime/c/fmi/buildproject/"* 757.fmutmp/sources
	cp -a CONTROLS_FMU.libs 757.fmutmp/sources/

