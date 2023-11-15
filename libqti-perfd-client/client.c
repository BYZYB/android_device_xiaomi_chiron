#define LOG_TAG "libqti-perfd-client"

#include <stdint.h>
#include <log/log.h>

void perf_get_feedback() {}

void perf_hint() {}

int perf_lock_acq(int handle, int duration, int arg3[], int arg4) {
    return handle;
}

void perf_lock_cmd() {}

int perf_lock_rel(int handle) {
    return handle;
}

void perf_lock_use_profile() {}
