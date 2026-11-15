package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public abstract class AbstractAWSSigner implements Signer {

    private static final ThreadLocal f17718b = new ThreadLocal<MessageDigest>() {
        @Override
        public MessageDigest initialValue() {
            try {
                return MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
            } catch (NoSuchAlgorithmException e10) {
                throw new AmazonClientException("Unable to get SHA256 Function" + e10.getMessage(), e10);
            }
        }
    };

    public static final String f17717a = BinaryUtils.d(d(""));

    private static byte[] d(String str) {
        try {
            MessageDigest messageDigestK = k();
            messageDigestK.update(str.getBytes(StringUtils.f18387a));
            return messageDigestK.digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    private static MessageDigest k() {
        MessageDigest messageDigest = (MessageDigest) f17718b.get();
        messageDigest.reset();
        return messageDigest;
    }

    protected InputStream e(Request request) {
        if (!HttpUtils.f(request)) {
            return f(request);
        }
        String strC = HttpUtils.c(request);
        return strC == null ? new ByteArrayInputStream(new byte[0]) : new ByteArrayInputStream(strC.getBytes(StringUtils.f18387a));
    }

    protected InputStream f(Request request) {
        try {
            InputStream content = request.getContent();
            if (content == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            if (content.markSupported()) {
                return request.getContent();
            }
            throw new AmazonClientException("Unable to read request payload to sign request.");
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to read request payload to sign request: " + e10.getMessage(), e10);
        }
    }

    protected String g(URI uri) {
        String strB = StringUtils.b(uri.getHost());
        if (!HttpUtils.d(uri)) {
            return strB;
        }
        return strB + ":" + uri.getPort();
    }

    protected String h(Request request) {
        return HttpUtils.f(request) ? "" : i(request.getParameters());
    }

    protected String i(Map map) {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : map.entrySet()) {
            treeMap.put(HttpUtils.e((String) entry.getKey(), false), HttpUtils.e((String) entry.getValue(), false));
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb2.append((String) entry2.getKey());
            sb2.append(UrlUtils.EQUAL_MARK);
            sb2.append((String) entry2.getValue());
            if (it.hasNext()) {
                sb2.append(UrlUtils.AND_MARK);
            }
        }
        return sb2.toString();
    }

    protected String j(String str, boolean z10) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        if (z10) {
            str = HttpUtils.e(str, true);
        }
        return str.startsWith("/") ? str : "/".concat(str);
    }

    protected Date l(int i10) {
        Date date = new Date();
        return i10 != 0 ? new Date(date.getTime() - ((long) (i10 * 1000))) : date;
    }

    protected int m(Request request) {
        return SDKGlobalConfiguration.a() != 0 ? SDKGlobalConfiguration.a() : request.f();
    }

    protected byte[] n(InputStream inputStream) {
        try {
            SdkDigestInputStream sdkDigestInputStream = new SdkDigestInputStream(inputStream, k());
            while (sdkDigestInputStream.read(new byte[1024]) > -1) {
            }
            return sdkDigestInputStream.getMessageDigest().digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    public byte[] o(String str) {
        return d(str);
    }

    public byte[] p(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to compute hash while signing request: " + e10.getMessage(), e10);
        }
    }

    protected AWSCredentials q(AWSCredentials aWSCredentials) {
        String strB;
        String strC;
        String strA;
        synchronized (aWSCredentials) {
            try {
                strB = aWSCredentials.b();
                strC = aWSCredentials.c();
                strA = aWSCredentials instanceof AWSSessionCredentials ? ((AWSSessionCredentials) aWSCredentials).a() : null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (strC != null) {
            strC = strC.trim();
        }
        if (strB != null) {
            strB = strB.trim();
        }
        if (strA != null) {
            strA = strA.trim();
        }
        return aWSCredentials instanceof AWSSessionCredentials ? new BasicSessionCredentials(strB, strC, strA) : new BasicAWSCredentials(strB, strC);
    }

    public byte[] r(String str, byte[] bArr, SigningAlgorithm signingAlgorithm) {
        try {
            return s(str.getBytes(StringUtils.f18387a), bArr, signingAlgorithm);
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }

    protected byte[] s(byte[] bArr, byte[] bArr2, SigningAlgorithm signingAlgorithm) {
        try {
            Mac mac = Mac.getInstance(signingAlgorithm.toString());
            mac.init(new SecretKeySpec(bArr2, signingAlgorithm.toString()));
            return mac.doFinal(bArr);
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }

    protected String t(String str, String str2, SigningAlgorithm signingAlgorithm) {
        return u(str.getBytes(StringUtils.f18387a), str2, signingAlgorithm);
    }

    protected String u(byte[] bArr, String str, SigningAlgorithm signingAlgorithm) {
        try {
            return Base64.encodeAsString(s(bArr, str.getBytes(StringUtils.f18387a), signingAlgorithm));
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to calculate a request signature: " + e10.getMessage(), e10);
        }
    }
}
