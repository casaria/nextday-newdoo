# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_nosnapshot
DEFS_Debug := \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DTRACE_MAPS' \
	'-D_GLIBCXX_DEBUG=1' \
	'-DENABLE_HANDLE_ZAPPING' \
	'-DENABLE_SLOW_DCHECKS' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-B/root/node-v5.6.0/third_party/binutils/Linux_x64/Release/bin \
	-fno-strict-aliasing \
	-m64 \
	-Woverloaded-virtual \
	 \
	-fdata-sections \
	-ffunction-sections \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I$(srcdir)/deps/v8

DEFS_Release := \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_DISASSEMBLER'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-B/root/node-v5.6.0/third_party/binutils/Linux_x64/Release/bin \
	-fno-strict-aliasing \
	-m64 \
	-O3 \
	-ffunction-sections \
	-fdata-sections \
	-fno-omit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I$(srcdir)/deps/v8

OBJS := \
	$(obj).target/$(TARGET)/gen/libraries.o \
	$(obj).target/$(TARGET)/gen/code-stub-libraries.o \
	$(obj).target/$(TARGET)/gen/experimental-libraries.o \
	$(obj).target/$(TARGET)/gen/extras-libraries.o \
	$(obj).target/$(TARGET)/deps/v8/src/snapshot/snapshot-empty.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/v8/tools/gyp/js2c.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-fuse-ld=gold \
	-B/root/node-v5.6.0/third_party/binutils/Linux_x64/Release/bin \
	-m64 \
	-Wl,--threads \
	-Wl,--thread-count=4

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-fuse-ld=gold \
	-B/root/node-v5.6.0/third_party/binutils/Linux_x64/Release/bin \
	-m64

LIBS :=

$(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a: LIBS := $(LIBS)
$(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a
# Add target alias
.PHONY: v8_nosnapshot
v8_nosnapshot: $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a

# Add target alias to "all" target.
.PHONY: all
all: v8_nosnapshot

# Add target alias
.PHONY: v8_nosnapshot
v8_nosnapshot: $(builddir)/libv8_nosnapshot.a

# Copy this to the static library output path.
$(builddir)/libv8_nosnapshot.a: TOOLSET := $(TOOLSET)
$(builddir)/libv8_nosnapshot.a: $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libv8_nosnapshot.a
# Short alias for building this static library.
.PHONY: libv8_nosnapshot.a
libv8_nosnapshot.a: $(obj).target/deps/v8/tools/gyp/libv8_nosnapshot.a $(builddir)/libv8_nosnapshot.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libv8_nosnapshot.a

