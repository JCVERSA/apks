package com.cicada.player.utils.media;

public interface DrmCallback {
    byte[] requestKey(String str, byte[] bArr);

    byte[] requestProvision(String str, byte[] bArr);
}
