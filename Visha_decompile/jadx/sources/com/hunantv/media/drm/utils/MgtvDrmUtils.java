package com.hunantv.media.drm.utils;

import android.media.MediaDrm;
import android.util.Log;
import com.google.gson.Gson;
import com.google.protobuf.InvalidProtocolBufferException;
import com.hunantv.media.drm.MgtvDrmConstans;
import com.hunantv.media.drm.protoc.WidevinePsshDataOuterClass;
import com.hunantv.media.player.pragma.DebugLog;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class MgtvDrmUtils {
    private static final String TAG = "CencDrmUtils";
    public static final Map<UUID, String> sCommercialDrmSolutionValueMap = new HashMap<UUID, String>() {
        {
            put(MgtvDrmConstans.MARLIN_UUID, "5");
            put(MgtvDrmConstans.WIDEVINE_UUID, "2");
            put(MgtvDrmConstans.CHINADRM_UUID, "4");
        }
    };
    public static final Map<UUID, String> sNonCommercialDrmSolutionValueMap = new HashMap<UUID, String>() {
        {
            put(MgtvDrmConstans.CHINADRM_UUID, "6");
        }
    };
    public static Map<UUID, Boolean> sDrmSupportMapCache = new HashMap();

    public static class PSSH {
        public byte[] data;
        public List key_ids = new LinkedList();
        public byte[] rawData;
        public byte[] system_id;
    }

    public static class WisePlayPsshJson {
        public String contentID;
        public String enschema;
        public String exts;
        public List<String> kids;
        public String playIndex;
        public String version;

        private WisePlayPsshJson() {
        }
    }

    private static String arrToHex(byte[] bArr) {
        String str = "0x";
        for (byte b : bArr) {
            str = str + String.format("%02x", Byte.valueOf(b));
        }
        return str;
    }

    private static UUID bytesToUUID(byte[] bArr) {
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < 8; i++) {
            int i2 = (7 - i) * 8;
            j |= (((long) bArr[i]) & 255) << i2;
            j2 |= (((long) bArr[i + 8]) & 255) << i2;
        }
        return new UUID(j, j2);
    }

    public static byte[] createPsshRawData(PSSH pssh) {
        byte[] bArr;
        byte[] bArr2;
        if (pssh == null || (bArr = pssh.system_id) == null || (bArr2 = pssh.data) == null) {
            return null;
        }
        int length = bArr.length + 16 + bArr2.length;
        byte[] bArr3 = new byte[length];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr3);
        byteBufferWrap.putInt(length);
        byte[] bytes = "pssh".getBytes();
        byteBufferWrap.put(bytes, 0, bytes.length);
        byteBufferWrap.putInt(0);
        byte[] bArr4 = pssh.system_id;
        byteBufferWrap.put(bArr4, 0, bArr4.length);
        byteBufferWrap.putInt(pssh.data.length);
        byte[] bArr5 = pssh.data;
        byteBufferWrap.put(bArr5, 0, bArr5.length);
        return bArr3;
    }

    public static String drmt2DrmTypeStr(String str) {
        str.hashCode();
        switch (str) {
            case "0":
                return "清流";
            case "1":
                return "marlin DRM";
            case "2":
                return "wiseplay DRM";
            case "3":
                return "marlin cbcs DRM";
            case "4":
                return "widevine DRM";
            case "5":
                return "Fairplay DRM";
            case "6":
                return "PlayReady DRM";
            case "10":
                return "LightPlay DRM";
            default:
                return "n";
        }
    }

    public static boolean isCryptoSchemeSupported(UUID uuid) {
        try {
            if (sDrmSupportMapCache.containsKey(uuid)) {
                return sDrmSupportMapCache.get(uuid).booleanValue();
            }
            if (uuid == null) {
                return false;
            }
            boolean zIsCryptoSchemeSupported = MediaDrm.isCryptoSchemeSupported(uuid);
            sDrmSupportMapCache.put(uuid, Boolean.valueOf(zIsCryptoSchemeSupported));
            return zIsCryptoSchemeSupported;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean isWidevineSupport() {
        return isCryptoSchemeSupported(MgtvDrmConstans.WIDEVINE_UUID);
    }

    public static Map<UUID, PSSH> parsePSSH(byte[] bArr) throws InvalidProtocolBufferException {
        if (bArr == null || bArr.length < 16) {
            DebugLog.e(TAG, "parsePSSH invalid pssh");
            return null;
        }
        HashMap map = new HashMap();
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            DebugLog.i(TAG, "pssh_size_bytes: " + byteBufferWrap.getInt());
            while (byteBufferWrap.remaining() > 0) {
                PSSH pssh = new PSSH();
                if (byteBufferWrap.remaining() < 16) {
                    Log.w(TAG, "parsePSSH: len is too short to parse UUID: (" + byteBufferWrap.remaining() + " < 16)");
                    return null;
                }
                int i = byteBufferWrap.getInt();
                int i2 = byteBufferWrap.getInt();
                int i3 = byteBufferWrap.getInt();
                int i4 = byteBufferWrap.getInt();
                byte[] bArr2 = new byte[i];
                pssh.system_id = bArr2;
                byteBufferWrap.get(bArr2);
                for (int i5 = 0; i5 < i2; i5++) {
                    byte[] bArr3 = new byte[i3];
                    byteBufferWrap.get(bArr3);
                    pssh.key_ids.add(bArr3);
                }
                byte[] bArr4 = new byte[i4];
                pssh.data = bArr4;
                byteBufferWrap.get(bArr4);
                pssh.rawData = createPsshRawData(pssh);
                if (i == 16) {
                    UUID uuidBytesToUUID = bytesToUUID(pssh.system_id);
                    if (MgtvDrmConstans.CHINADRM_UUID.equals(uuidBytesToUUID)) {
                        DebugLog.i(TAG, "this is wiseplay uuid parse it");
                        pssh.key_ids.clear();
                        pssh.key_ids = ((WisePlayPsshJson) new Gson().fromJson(new String(pssh.data), WisePlayPsshJson.class)).kids;
                    } else if (MgtvDrmConstans.WIDEVINE_UUID.equals(uuidBytesToUUID)) {
                        DebugLog.i(TAG, "this is widevine uuid parse it");
                        pssh.key_ids.clear();
                        WidevinePsshDataOuterClass.WidevinePsshData from = WidevinePsshDataOuterClass.WidevinePsshData.parseFrom(pssh.data);
                        if (from != null && from.getKeyIdCount() > 0) {
                            for (int i6 = 0; i6 < from.getKeyIdCount(); i6++) {
                                if (from.getKeyId(i6) != null) {
                                    pssh.key_ids.add(from.getKeyId(i6).toByteArray());
                                }
                            }
                        }
                    } else if (MgtvDrmConstans.MARLIN_UUID.equals(uuidBytesToUUID)) {
                        try {
                            DebugLog.i(TAG, "this is marlin uuid parse it");
                            pssh.key_ids.clear();
                            ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(pssh.data);
                            byteBufferWrap2.position(28);
                            byte[] bArr5 = new byte[i3];
                            byteBufferWrap2.get(bArr5);
                            pssh.key_ids.add(bArr5);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    map.put(uuidBytesToUUID, pssh);
                }
                return null;
            }
            return map;
        } catch (Exception unused) {
            return null;
        }
    }
}
