package app.fast.ssh.util;

import app.fast.ssh.ProtectedFastSSH;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class AESEncryption {
    public static final String KEY = ProtectedFastSSH.s("ㆉ");

    public static String decrypt(String str, String str2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(Arrays.copyOf(MessageDigest.getInstance(ProtectedFastSSH.s("ㆃ")).digest(str2.getBytes(StandardCharsets.UTF_8)), 16), ProtectedFastSSH.s("ㆄ"));
        Cipher cipher = Cipher.getInstance(ProtectedFastSSH.s("ㆅ"));
        cipher.init(2, secretKeySpec);
        return new String(cipher.doFinal(B64.fromBase64(str.getBytes())));
    }

    public static String encrypt(String str, String str2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(Arrays.copyOf(MessageDigest.getInstance(ProtectedFastSSH.s("ㆃ")).digest(str2.getBytes(StandardCharsets.UTF_8)), 16), ProtectedFastSSH.s("ㆄ"));
        Cipher cipher = Cipher.getInstance(ProtectedFastSSH.s("ㆆ"));
        cipher.init(1, secretKeySpec);
        return new String(B64.toBase64(cipher.doFinal(str.getBytes(StandardCharsets.UTF_8))));
    }

    public static String md5(String str) {
        try {
            return String.format(ProtectedFastSSH.s("ㆈ"), new BigInteger(1, MessageDigest.getInstance(ProtectedFastSSH.s("ㆇ")).digest(str.getBytes())).toString(16)).replace(' ', '0');
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
