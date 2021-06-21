/*
 * Copyright (C) 2012 The Android Open Source Project
 * Copyright (C) 2016 The CyanogenMod Project
 * Copyright (C) 2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#pragma push_macro("PROPERTY_VALUE_MAX")

#include <cutils/properties.h>
#include <string.h>

static inline const char *BtmGetDefaultName()
{
    char product_device[PROPERTY_VALUE_MAX];
    property_get("ro.product.device", product_device, "");

    if (strstr(product_device, "chiron"))
        return "Xiaomi Mi MIX 2";
    if (strstr(product_device, "sagit"))
        return "Xiaomi MI 6";

    return ""; // Fallback to ro.product.model
}

#define BTM_DEF_LOCAL_NAME BtmGetDefaultName()
#define MAX_ACL_CONNECTIONS 16 // Disables read remote device feature
#define MAX_L2CAP_CHANNELS 16
#define BLE_VND_INCLUDED TRUE
#pragma pop_macro("PROPERTY_VALUE_MAX")
#endif
