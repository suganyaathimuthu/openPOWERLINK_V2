################################################################################
#
# File lists for openPOWERLINK stack sources
#
# Copyright (c) 2014, Bernecker+Rainer Industrie-Elektronik Ges.m.b.H. (B&R)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the copyright holders nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
################################################################################

################################################################################
# Common sources
################################################################################

SET(COMMON_SOURCES
    ${COMMON_SOURCE_DIR}/debug.c
    ${COMMON_SOURCE_DIR}/event/event.c
    )

SET(COMMON_WINDOWS_SOURCES
    ${CONTRIB_SOURCE_DIR}/trace/trace-windows.c
    )

SET(COMMON_LINUXUSER_SOURCES
    ${ARCH_SOURCE_DIR}/linux/ftrace-debug.c
    ${CONTRIB_SOURCE_DIR}/trace/trace-printf.c
    )

SET(COMMON_LINUXKERNEL_SOURCES
    ${CONTRIB_SOURCE_DIR}/trace/trace-printk.c
    )

################################################################################
# Application library (User) sources
################################################################################

################################################################################
# MN specific sources

SET(USER_MN_SOURCES
    ${USER_SOURCE_DIR}/obd/obdcdc.c
    ${USER_SOURCE_DIR}/api/processimage-cia302.c
    ${USER_SOURCE_DIR}/cfmu.c
    )

################################################################################
# Generic sources

SET(USER_SOURCES
    ${USER_SOURCE_DIR}/api/generic.c
    ${USER_SOURCE_DIR}/api/processimage.c
    ${USER_SOURCE_DIR}/obd/obd.c
    ${USER_SOURCE_DIR}/obd/obdcreate.c
    ${USER_SOURCE_DIR}/dll/dllucal.c
    ${USER_SOURCE_DIR}/event/eventu.c
    ${USER_SOURCE_DIR}/nmt/nmtu.c
    ${USER_SOURCE_DIR}/nmt/nmtcnu.c
    ${USER_SOURCE_DIR}/nmt/nmtmnu.c
    ${USER_SOURCE_DIR}/nmt/identu.c
    ${USER_SOURCE_DIR}/nmt/statusu.c
    ${USER_SOURCE_DIR}/nmt/syncu.c
    ${USER_SOURCE_DIR}/pdo/pdou.c
    ${USER_SOURCE_DIR}/pdo/pdoucal.c
    ${USER_SOURCE_DIR}/pdo/pdoucal-triplebufshm.c
    ${USER_SOURCE_DIR}/sdo/sdo-comu.c
    ${USER_SOURCE_DIR}/sdo/sdo-sequ.c
    ${USER_SOURCE_DIR}/sdo/sdo-asndu.c
    ${USER_SOURCE_DIR}/sdo/sdo-udpu.c
    ${USER_SOURCE_DIR}/errhnd/errhndu.c
    ${USER_SOURCE_DIR}/ctrl/ctrlu.c
    )

################################################################################
# User control CAL sources

SET(CTRL_UCAL_LINUXIOCTL_SOURCES
    ${USER_SOURCE_DIR}/ctrl/ctrlucal-ioctl.c
    )

SET(CTRL_UCAL_POSIXMEM_SOURCES
    ${USER_SOURCE_DIR}/ctrl/ctrlucal-mem.c
    ${COMMON_SOURCE_DIR}/ctrl/ctrlcal-posixshm.c
    )

SET(CTRL_UCAL_DIRECT_SOURCES
    ${USER_SOURCE_DIR}/ctrl/ctrlucal-direct.c
    )

################################################################################
# User DLL CAL sources

SET(DLL_UCAL_CIRCBUF_SOURCES
    ${USER_SOURCE_DIR}/dll/dllucal-circbuf.c
    )

SET(DLL_UCAL_LINUXIOCTL_SOURCES
    ${USER_SOURCE_DIR}/dll/dllucal-ioctl.c
    )

################################################################################
# User error handler CAL sources

SET(ERRHND_UCAL_LINUXIOCTL_SOURCES
    ${USER_SOURCE_DIR}/errhnd/errhnducal-ioctl.c
    )

SET(ERRHND_UCAL_POSIXMEM_SOURCES
    ${USER_SOURCE_DIR}/errhnd/errhnducal-posixshm.c
    )

SET(ERRHND_UCAL_LOCAL_SOURCES
    ${USER_SOURCE_DIR}/errhnd/errhnducal-local.c
    )

################################################################################
# User event CAL sources

SET(EVENT_UCAL_LINUXUSER_SOURCES
    ${USER_SOURCE_DIR}/event/eventucal-linux.c
    ${USER_SOURCE_DIR}/event/eventucalintf-circbuf.c
    )

SET(EVENT_UCAL_LINUXIOCTL_SOURCES
    ${USER_SOURCE_DIR}/event/eventucal-linuxioctl.c
    )

SET(EVENT_UCAL_WINDOWS_SOURCES
    ${USER_SOURCE_DIR}/event/eventucal-win32.c
    ${USER_SOURCE_DIR}/event/eventucalintf-circbuf.c
    )


################################################################################
# User PDO CAL sources
SET(PDO_UCAL_LOCAL_SOURCES
    ${USER_SOURCE_DIR}/pdo/pdoucalmem-local.c
    ${USER_SOURCE_DIR}/pdo/pdoucalsync-null.c
    )

SET(PDO_UCAL_POSIX_SOURCES
    ${USER_SOURCE_DIR}/pdo/pdoucalmem-posixshm.c
    ${USER_SOURCE_DIR}/pdo/pdoucalsync-bsdsem.c
    )

SET(PDO_UCAL_LINUXMMAPIOCTL_SOURCES
    ${USER_SOURCE_DIR}/pdo/pdoucalsync-ioctl.c
    ${USER_SOURCE_DIR}/pdo/pdoucalmem-linuxmmap.c
    )

################################################################################
# Driver library (Kernel) sources
################################################################################

################################################################################
# Generic driver library sources

SET(KERNEL_SOURCES
    ${KERNEL_SOURCE_DIR}/dll/dllk.c
    ${KERNEL_SOURCE_DIR}/dll/dllkfilter.c
    ${KERNEL_SOURCE_DIR}/dll/dllkstatemachine.c
    ${KERNEL_SOURCE_DIR}/dll/dllkevent.c
    ${KERNEL_SOURCE_DIR}/dll/dllkframe.c
    ${KERNEL_SOURCE_DIR}/dll/dllkcal.c
    ${KERNEL_SOURCE_DIR}/event/eventk.c
    ${KERNEL_SOURCE_DIR}/nmt/nmtk.c
    ${KERNEL_SOURCE_DIR}/pdo/pdok.c
    ${KERNEL_SOURCE_DIR}/pdo/pdokcal.c
    ${KERNEL_SOURCE_DIR}/pdo/pdokcal-triplebufshm.c
    ${KERNEL_SOURCE_DIR}/errhnd/errhndk.c
    ${KERNEL_SOURCE_DIR}/ctrl/ctrlk.c
    )

################################################################################
# Control DLL CAL sources

SET(CTRL_KCAL_POSIXMEM_SOURCES
    ${KERNEL_SOURCE_DIR}/ctrl/ctrlkcal-mem.c
    ${COMMON_SOURCE_DIR}/ctrl/ctrlcal-posixshm.c
    )

SET(CTRL_KCAL_DIRECT_SOURCES
    ${KERNEL_SOURCE_DIR}/ctrl/ctrlkcal-direct.c
    )

SET(CTRL_KCAL_LINUXIOCTL_SOURCES
    ${KERNEL_SOURCE_DIR}/ctrl/ctrlkcal-linuxkernel.c
    )

################################################################################
# Kernel DLL CAL sources

SET(DLL_KCAL_CIRCBUF_SOURCES
    ${KERNEL_SOURCE_DIR}/dll/dllkcal-circbuf.c
    )

SET(DLL_KCAL_LINUXIOCTL_SOURCES
    ${KERNEL_SOURCE_DIR}/dll/dllkcal-linuxkernel.c
    )

################################################################################
# Kernel error handler CAL sources

SET(ERRHND_KCAL_POSIXMEM_SOURCES
    ${KERNEL_SOURCE_DIR}/errhnd/errhndkcal-posixshm.c
    )

SET(ERRHND_KCAL_LOCAL_SOURCES
    ${KERNEL_SOURCE_DIR}/errhnd/errhndkcal-local.c
    )

################################################################################
# Kernel event CAL sources

SET(EVENT_KCAL_LINUXUSER_SOURCES
    ${KERNEL_SOURCE_DIR}/event/eventkcal-linux.c
    ${KERNEL_SOURCE_DIR}/event/eventkcalintf-circbuf.c
    )

SET(EVENT_KCAL_WINDOWS_SOURCES
    ${KERNEL_SOURCE_DIR}/event/eventkcal-win32.c
    ${KERNEL_SOURCE_DIR}/event/eventkcalintf-circbuf.c
    )

SET(EVENT_KCAL_LINUXKERNEL_SOURCES
    ${KERNEL_SOURCE_DIR}/event/eventkcal-linuxkernel.c
    ${KERNEL_SOURCE_DIR}/event/eventkcalintf-circbuf.c
    )

################################################################################
# Kernel PDO CAL sources

SET(PDO_KCAL_LOCAL_SOURCES
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalmem-local.c
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalsync-null.c
    )

SET(PDO_KCAL_POSIXMEM_SOURCES
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalmem-posixshm.c
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalsync-bsdsem.c
    )

SET(PDO_KCAL_LINUXKERNEL_SOURCES
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalmem-linuxkernel.c
    ${KERNEL_SOURCE_DIR}/pdo/pdokcalsync-linuxkernel.c
    )

################################################################################
# Kernel Ethernet

SET(HARDWARE_DRIVER_LINUXUSER_SOURCES
    ${KERNEL_SOURCE_DIR}/veth/veth-linuxuser.c
    ${KERNEL_SOURCE_DIR}/hrtimer/hrtimer-posix.c
    ${EDRV_SOURCE_DIR}/edrvcyclic.c
    ${EDRV_SOURCE_DIR}/edrv-pcap_linux.c
    )

SET(HARDWARE_DRIVER_WINDOWS_SOURCES
    ${EDRV_SOURCE_DIR}/edrvcyclic.c
    ${EDRV_SOURCE_DIR}/edrv-pcap.c
    )

SET(HARDWARE_DRIVER_LINUXKERNEL_SOURCES
     ${KERNEL_SOURCE_DIR}/veth/veth-linuxkernel.c
     ${KERNEL_SOURCE_DIR}/hrtimer/hrtimer-linuxkernel.c
     ${EDRV_SOURCE_DIR}/edrvcyclic.c
     )

################################################################################
# User timer sources

# Linux userspace sources
SET(USER_TIMER_LINUXUSER_SOURCES
    ${USER_SOURCE_DIR}/timer/timer-linuxuser.c
    )

SET(USER_TIMER_WINDOWS_SOURCES
    ${USER_SOURCE_DIR}/timer/timer-generic.c
    )

################################################################################
# Circular buffer sources
################################################################################

SET(CIRCBUF_POSIX_SOURCES
    ${COMMON_SOURCE_DIR}/circbuf/circbuffer.c
    ${COMMON_SOURCE_DIR}/circbuf/circbuf-posixshm.c
    )

SET(CIRCBUF_WINDOWS_SOURCES
    ${COMMON_SOURCE_DIR}/circbuf/circbuffer.c
    ${COMMON_SOURCE_DIR}/circbuf/circbuf-win32.c
    )

SET(CIRCBUF_LINUXKERNEL_SOURCES
    ${COMMON_SOURCE_DIR}/circbuf/circbuffer.c
    ${COMMON_SOURCE_DIR}/circbuf/circbuf-linuxkernel.c
    )

################################################################################
# Target system specific sources
################################################################################

SET(TARGET_WINDOWS_SOURCES
    ${ARCH_SOURCE_DIR}/windows/target-windows.c
    )

SET(TARGET_LINUX_SOURCES
    ${ARCH_SOURCE_DIR}/linux/target-linux.c
    )

################################################################################
# Architecture specific sources
################################################################################

SET(ARCH_X86_SOURCES
    ${COMMON_SOURCE_DIR}/ami/amix86.c
    )

################################################################################
# Header Files
################################################################################

SET(OPLK_HEADERS
    ${OPLK_INCLUDE_DIR}/ami.h
    ${OPLK_INCLUDE_DIR}/Benchmark.h
    ${OPLK_INCLUDE_DIR}/cfm.h
    ${OPLK_INCLUDE_DIR}/Debug.h
    ${OPLK_INCLUDE_DIR}/dll.h
    ${OPLK_INCLUDE_DIR}/Epl.h
    ${OPLK_INCLUDE_DIR}/EplDef.h
    ${OPLK_INCLUDE_DIR}/EplErrDef.h
    ${OPLK_INCLUDE_DIR}/EplErrStr.h
    ${OPLK_INCLUDE_DIR}/EplFrame.h
    ${OPLK_INCLUDE_DIR}/EplInc.h
    ${OPLK_INCLUDE_DIR}/EplTarget.h
    ${OPLK_INCLUDE_DIR}/EplTimer.h
    ${OPLK_INCLUDE_DIR}/EplVersion.h
    ${OPLK_INCLUDE_DIR}/event.h
    ${OPLK_INCLUDE_DIR}/ftraceDebug.h
    ${OPLK_INCLUDE_DIR}/global.h
    ${OPLK_INCLUDE_DIR}/led.h
    ${OPLK_INCLUDE_DIR}/nmt.h
    ${OPLK_INCLUDE_DIR}/obd.h
    ${OPLK_INCLUDE_DIR}/obdcdc.h
    ${OPLK_INCLUDE_DIR}/obdmacro.h
    ${OPLK_INCLUDE_DIR}/powerlink-module.h
    ${OPLK_INCLUDE_DIR}/sdo.h
    ${OPLK_INCLUDE_DIR}/sdoabortcodes.h
    ${OPLK_INCLUDE_DIR}/section-default.h
    ${OPLK_INCLUDE_DIR}/section-microblaze.h
    ${OPLK_INCLUDE_DIR}/section-nios2.h
    )

SET(STACK_HEADERS
    ${STACK_INCLUDE_DIR}/circbuffer.h
    ${STACK_INCLUDE_DIR}/ctrl.h
    ${STACK_INCLUDE_DIR}/ctrlcal.h
    ${STACK_INCLUDE_DIR}/ctrlcal-mem.h
    ${STACK_INCLUDE_DIR}/dllcal.h
    ${STACK_INCLUDE_DIR}/edrv.h
    ${STACK_INCLUDE_DIR}/errhnd.h
    ${STACK_INCLUDE_DIR}/pdo.h
    ${STACK_INCLUDE_DIR}/target.h
    )

SET(USER_HEADERS
    ${USER_STACK_INCLUDE_DIR}/cfmu.h
    ${USER_STACK_INCLUDE_DIR}/ctrlu.h
    ${USER_STACK_INCLUDE_DIR}/ctrlucal.h
    ${USER_STACK_INCLUDE_DIR}/dllucal.h
    ${USER_STACK_INCLUDE_DIR}/errhndu.h
    ${USER_STACK_INCLUDE_DIR}/eventu.h
    ${USER_STACK_INCLUDE_DIR}/eventucal.h
    ${USER_STACK_INCLUDE_DIR}/eventucalintf.h
    ${USER_STACK_INCLUDE_DIR}/identu.h
    ${USER_STACK_INCLUDE_DIR}/ledu.h
    ${USER_STACK_INCLUDE_DIR}/nmtcnu.h
    ${USER_STACK_INCLUDE_DIR}/nmtmnu.h
    ${USER_STACK_INCLUDE_DIR}/nmtu.h
    ${USER_STACK_INCLUDE_DIR}/pdou.h
    ${USER_STACK_INCLUDE_DIR}/pdoucal.h
    ${USER_STACK_INCLUDE_DIR}/sdoasnd.h
    ${USER_STACK_INCLUDE_DIR}/sdocom.h
    ${USER_STACK_INCLUDE_DIR}/sdoseq.h
    ${USER_STACK_INCLUDE_DIR}/sdoudp.h
    ${USER_STACK_INCLUDE_DIR}/statusu.h
    ${USER_STACK_INCLUDE_DIR}/syncu.h
    ${USER_STACK_INCLUDE_DIR}/timeru.h
    )

SET(KERNEL_HEADERS
    ${USER_STACK_INCLUDE_DIR}/cfmu.h
    ${USER_STACK_INCLUDE_DIR}/ctrlk.h
    ${USER_STACK_INCLUDE_DIR}/ctrlkcal.h
    ${USER_STACK_INCLUDE_DIR}/dllk.h
    ${USER_STACK_INCLUDE_DIR}/dllkcal.h
    ${USER_STACK_INCLUDE_DIR}/dllkfilter.h
    ${USER_STACK_INCLUDE_DIR}/dllktgt.h
    ${USER_STACK_INCLUDE_DIR}/EplTimerHighResk.h
    ${USER_STACK_INCLUDE_DIR}/EplTimerSynck.h
    ${USER_STACK_INCLUDE_DIR}/errhndk.h
    ${USER_STACK_INCLUDE_DIR}/eventk.h
    ${USER_STACK_INCLUDE_DIR}/eventkcal.h
    ${USER_STACK_INCLUDE_DIR}/eventkcalintf.h
    ${USER_STACK_INCLUDE_DIR}/nmtk.h
    ${USER_STACK_INCLUDE_DIR}/pdok.h
    ${USER_STACK_INCLUDE_DIR}/pdokcal.h
    ${USER_STACK_INCLUDE_DIR}/veth.h
    )

SET(OBJDICT_HEADERS
    ${OBJDICT_DIR}/generic/objdict_1000-13ff.h
    ${OBJDICT_DIR}/generic/objdict_1b00-1fff.h
    )
