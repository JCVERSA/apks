package defpackage;

import com.bumptech.glide.load.Key;
import com.transsion.glide.load.model.LocalMediaLoadInfo;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Objects;

public class me6 implements Key {
    public final LocalMediaLoadInfo a;

    public me6(LocalMediaLoadInfo localMediaLoadInfo) {
        this.a = localMediaLoadInfo;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.a, ((me6) obj).a);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(this.a);
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.a.toString().getBytes(Charset.defaultCharset()));
    }
}
