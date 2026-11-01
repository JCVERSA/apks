package i;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.x500.X500Principal;

public final class a {

    public KeyStore f1131a;

    public final int f1132b = 3;

    public a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        try {
            if (i2 >= 23) {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f1131a = keyStore;
                keyStore.load(null);
                if (!this.f1131a.containsAlias("ZA_AP_fragment")) {
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                    keyGenerator.init(new KeyGenParameterSpec.Builder("ZA_AP_fragment", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setRandomizedEncryptionRequired(false).build());
                    keyGenerator.generateKey();
                }
            } else {
                if (i2 < 18) {
                    return;
                }
                KeyStore keyStore2 = KeyStore.getInstance("AndroidKeyStore");
                this.f1131a = keyStore2;
                keyStore2.load(null);
                if (!this.f1131a.containsAlias("ZA_AP_fragment")) {
                    Calendar calendar = Calendar.getInstance();
                    Calendar calendar2 = Calendar.getInstance();
                    calendar2.add(1, 20);
                    KeyPairGeneratorSpec keyPairGeneratorSpecBuild = new KeyPairGeneratorSpec.Builder(context).setAlias("ZA_AP_fragment").setSubject(new X500Principal("CN=Sample Name, O=Android Authority")).setSerialNumber(BigInteger.ONE).setStartDate(calendar.getTime()).setEndDate(calendar2.getTime()).build();
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(keyPairGeneratorSpecBuild);
                    keyPairGenerator.generateKeyPair();
                }
            }
        } catch (IOException | InvalidAlgorithmParameterException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | CertificateException unused) {
        }
    }

    public static byte[] c(String str) {
        byte[] bArr = new byte[12];
        String upperCase = str.replace("/", "").replace(".", "").toUpperCase();
        if (upperCase.isEmpty()) {
            upperCase = "ZAza";
        }
        int length = upperCase.length();
        for (int i2 = 0; i2 < 12; i2++) {
            bArr[i2] = (byte) upperCase.charAt((length - (i2 % length)) - 1);
        }
        return bArr;
    }

    public final String a(String str, byte[] bArr) {
        if (str == null) {
            return null;
        }
        int i2 = Build.VERSION.SDK_INT;
        int i3 = this.f1132b;
        if (i2 >= 23) {
            try {
                byte[] bArrDecode = Base64.decode(str, i3);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(2, (SecretKey) this.f1131a.getKey("ZA_AP_fragment", null), new GCMParameterSpec(128, bArr));
                return new String(cipher.doFinal(bArrDecode), "UTF-8");
            } catch (UnsupportedEncodingException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
                return null;
            }
        }
        if (i2 < 18) {
            try {
                byte[] bArrCopyOf = Arrays.copyOf(MessageDigest.getInstance("SHA-1").digest("ZA_AP_fragment".getBytes("UTF-8")), 16);
                byte[] bArrDecode2 = Base64.decode(str, i3);
                Cipher cipher2 = Cipher.getInstance("AES");
                cipher2.init(2, new SecretKeySpec(bArrCopyOf, "AES"));
                return new String(cipher2.doFinal(bArrDecode2), "UTF-8");
            } catch (UnsupportedEncodingException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused2) {
                return null;
            }
        }
        try {
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) ((KeyStore.PrivateKeyEntry) this.f1131a.getEntry("ZA_AP_fragment", null)).getPrivateKey();
            Cipher cipher3 = Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
            cipher3.init(2, rSAPrivateKey);
            CipherInputStream cipherInputStream = new CipherInputStream(new ByteArrayInputStream(Base64.decode(str, i3)), cipher3);
            ArrayList arrayList = new ArrayList();
            while (true) {
                int i4 = cipherInputStream.read();
                if (i4 == -1) {
                    break;
                }
                arrayList.add(Byte.valueOf((byte) i4));
            }
            int size = arrayList.size();
            byte[] bArr2 = new byte[size];
            for (int i5 = 0; i5 < size; i5++) {
                bArr2[i5] = ((Byte) arrayList.get(i5)).byteValue();
            }
            return new String(bArr2, 0, size, "UTF-8");
        } catch (IOException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableEntryException | NoSuchPaddingException unused3) {
            return null;
        }
    }

    public final String b(String str, byte[] bArr) {
        if (str == null) {
            return null;
        }
        int i2 = Build.VERSION.SDK_INT;
        int i3 = this.f1132b;
        if (i2 >= 23) {
            try {
                byte[] bytes = str.getBytes("UTF-8");
                SecretKey secretKey = (SecretKey) this.f1131a.getKey("ZA_AP_fragment", null);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKey, new GCMParameterSpec(128, bArr));
                return Base64.encodeToString(cipher.doFinal(bytes), i3);
            } catch (UnsupportedEncodingException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
                return null;
            }
        }
        if (i2 < 18) {
            try {
                byte[] bArrCopyOf = Arrays.copyOf(MessageDigest.getInstance("SHA-1").digest("ZA_AP_fragment".getBytes("UTF-8")), 16);
                byte[] bytes2 = str.getBytes("UTF-8");
                Cipher cipher2 = Cipher.getInstance("AES");
                cipher2.init(1, new SecretKeySpec(bArrCopyOf, "AES"));
                return Base64.encodeToString(cipher2.doFinal(bytes2), i3);
            } catch (UnsupportedEncodingException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused2) {
                return null;
            }
        }
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) ((KeyStore.PrivateKeyEntry) this.f1131a.getEntry("ZA_AP_fragment", null)).getCertificate().getPublicKey();
            Cipher cipher3 = Cipher.getInstance("RSA/ECB/PKCS1Padding", "AndroidOpenSSL");
            cipher3.init(1, rSAPublicKey);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            CipherOutputStream cipherOutputStream = new CipherOutputStream(byteArrayOutputStream, cipher3);
            cipherOutputStream.write(str.getBytes("UTF-8"));
            cipherOutputStream.close();
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), i3);
        } catch (IOException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableEntryException | NoSuchPaddingException unused3) {
            return null;
        }
    }
}
