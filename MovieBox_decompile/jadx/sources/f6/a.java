package f6;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.b;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

public class a extends MediaDataSource {

    public static final ConcurrentHashMap f60039e = new ConcurrentHashMap();

    private final com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a f60040a;

    private long f60041b = -2147483648L;

    private final Context f60042c;

    private final TKC f60043d;

    public a(Context context, TKC tkc) {
        this.f60042c = context;
        this.f60043d = tkc;
        this.f60040a = new b(context, tkc);
    }

    public static a f(Context context, TKC tkc) {
        a aVar = new a(context, tkc);
        f60039e.put(tkc.sef(), aVar);
        return aVar;
    }

    @Override
    public void close() {
        this.f60043d.Fmk();
        com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a aVar = this.f60040a;
        if (aVar != null) {
            aVar.sP();
        }
        f60039e.remove(this.f60043d.sef());
    }

    public TKC d() {
        return this.f60043d;
    }

    @Override
    public long getSize() {
        if (this.f60041b == -2147483648L) {
            if (this.f60042c == null || TextUtils.isEmpty(this.f60043d.Fmk())) {
                return -1L;
            }
            this.f60041b = this.f60040a.TKC();
        }
        return this.f60041b;
    }

    @Override
    public int readAt(long j10, byte[] bArr, int i10, int i11) {
        int iA = this.f60040a.a(j10, bArr, i10, i11);
        int length = bArr.length;
        Objects.toString(Thread.currentThread());
        return iA;
    }
}
