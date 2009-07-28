<?xml version="1.0"?>
<!DOCTYPE group SYSTEM "../../../tools/rbuild/project.dtd">
<group>
<module name="win32k" type="kernelmodedriver" installbase="system32" installname="win32k.sys">
	<importlibrary definition="win32k.def" />
	<define name="_WIN32K_" />

	<include base="win32k">.</include>
	<include base="win32k">include</include>
	<include base="win32k" root="intermediate">.</include>
	<include base="ntoskrnl">include</include>
	<include base="freetype">include</include>
	<include base="ReactOS">include/reactos/subsys</include>
	<include base="ReactOS">include/reactos/drivers</include>

	<compilerflag compilerset="gcc">-fms-extensions</compilerflag>

	<library>ntoskrnl</library>
	<library>hal</library>
	<library>freetype</library>
	<library>libcntpr</library>
	<library>pseh</library>
	<directory name="include">
		<!--pch>win32k.h</pch-->
	</directory>
	<directory name="dib" root="intermediate">
		<file>dib8gen.c</file>
		<file>dib16gen.c</file>
		<file>dib32gen.c</file>
	</directory>

	<directory name="dib">
		<file>dib1bpp.c</file>
		<file>dib4bpp.c</file>
		<file>dib8bpp.c</file>
		<file>dib16bpp.c</file>
		<file>dib24bpp.c</file>
		<file>dib32bpp.c</file>
		<file>dibXXbpp.c</file>
		<file>dib.c</file>

		<if property="ARCH" value="i386">
			<directory name="i386">
				<file>dib24bpp_hline.s</file>
				<file>dib32bpp_hline.s</file>
				<file>dib32bpp_colorfill.s</file>
			</directory>
		</if>
		<ifnot property="ARCH" value="i386">
			<file>dib24bppc.c</file>
			<file>dib32bppc.c</file>
		</ifnot>
	</directory>

	<directory name="eng">
		<file>device.c</file>
		<file>driver.c</file>
		<file>engblt.c</file>
		<file>engbrush.c</file>
		<file>engclip.c</file>
		<file>engdev.c</file>
		<file>engdrv.c</file>
		<file>engevent.c</file>
		<file>engerror.c</file>
		<file>engfile.c</file>
		<file>engfloat.c</file>
		<file>engfont.c</file>
		<file>engmem.c</file>
		<file>engmisc.c</file>
		<file>engpaint.c</file>
		<file>engpal.c</file>
		<file>engpath.c</file>
		<file>engpoint.c</file>
		<file>engprint.c</file>
		<file>engquery.c</file>
		<file>engrtl.c</file>
		<file>engsem.c</file>
		<file>engsurf.c</file>
		<file>engtext.c</file>
		<file>engwnd.c</file>
		<file>engxform.c</file>
		<file>engxlate.c</file>

		<if property="ARCH" value="i386">
			<directory name="i386">
				<file>floatobj.S</file>
			</directory>
		</if>
	</directory>
	<directory name="gdi">
		<file>bitmap.c</file>
		<file>dc.c</file>
		<file>enum.c</file>
		<file>misc.c</file>
	</directory>
	<directory name="gre">
		<file>bitblt.c</file>
		<file>brushobj.c</file>
		<file>clipobj.c</file>
		<file>font.c</file>
		<file>gdiobj.c</file>
		<file>lineto.c</file>
		<file>palobj.c</file>
		<file>polyfill.c</file>
		<file>rect.c</file>
		<file>surfobj.c</file>
		<file>xformobj.c</file>
		<file>xlateobj.c</file>
		<file>cursoricon.c</file>
	</directory>
	<directory name="main">
		<file>csr.c</file>
		<file>err.c</file>
		<file>init.c</file>
		<file>usrheap.c</file>
		<file>cursor.c</file>
	</directory>
	<directory name="wine">
		<file>atom.c</file>
		<file>class.c</file>
		<file>directory.c</file>
		<file>handle.c</file>
		<file>hook.c</file>
		<file>main.c</file>
		<file>object.c</file>
		<file>queue.c</file>
		<file>region.c</file>
		<file>stubs.c</file>
		<file>user.c</file>
		<file>window.c</file>
		<file>winesup.c</file>
		<file>winstation.c</file>
	</directory>
	<file>win32k.rc</file>
</module>
</group>