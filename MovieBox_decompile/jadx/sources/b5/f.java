package b5;

import com.alibaba.fastjson.JSONException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.zip.GZIPInputStream;

public class f extends l {

    protected b2 f15536c;

    protected boolean f15537d;

    public f(a5.h hVar, Class cls, com.alibaba.fastjson.util.d dVar) {
        super(cls, dVar);
        boolean z10 = false;
        this.f15537d = false;
        z4.b bVarE = dVar.e();
        if (bVarE != null) {
            Class clsDeserializeUsing = bVarE.deserializeUsing();
            if (clsDeserializeUsing != null && clsDeserializeUsing != Void.class) {
                z10 = true;
            }
            this.f15537d = z10;
        }
    }

    @Override
    public int b() {
        b2 b2Var = this.f15536c;
        if (b2Var != null) {
            return b2Var.b();
        }
        return 2;
    }

    @Override
    public void d(a5.a aVar, Object obj, Type type, Map map) {
        Object objE;
        com.alibaba.fastjson.util.d dVar;
        int i10;
        if (this.f15536c == null) {
            k(aVar.l());
        }
        b2 b2VarP = this.f15536c;
        Type typeI = this.f15555a.f17585f;
        if (type instanceof ParameterizedType) {
            a5.g gVarM = aVar.m();
            if (gVarM != null) {
                gVarM.f180e = type;
            }
            if (typeI != type) {
                typeI = com.alibaba.fastjson.util.d.i(this.f15556b, type, typeI);
                if (b2VarP instanceof p) {
                    b2VarP = aVar.l().p(typeI);
                }
            }
        }
        Type type2 = typeI;
        if (!(b2VarP instanceof o) || (i10 = (dVar = this.f15555a).f17589j) == 0) {
            com.alibaba.fastjson.util.d dVar2 = this.f15555a;
            String str = dVar2.f17599t;
            objE = (!(str == null && dVar2.f17589j == 0) && (b2VarP instanceof e)) ? ((e) b2VarP).e(aVar, type2, dVar2.f17580a, str, dVar2.f17589j) : b2VarP.d(aVar, type2, dVar2.f17580a);
        } else {
            objE = ((o) b2VarP).g(aVar, type2, dVar.f17580a, i10);
        }
        if ((objE instanceof byte[]) && ("gzip".equals(this.f15555a.f17599t) || "gzip,base64".equals(this.f15555a.f17599t))) {
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream((byte[]) objE));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    byte[] bArr = new byte[1024];
                    int i11 = gZIPInputStream.read(bArr);
                    if (i11 == -1) {
                        break;
                    } else if (i11 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i11);
                    }
                }
                objE = byteArrayOutputStream.toByteArray();
            } catch (IOException e10) {
                throw new JSONException("unzip bytes error.", e10);
            }
        }
        if (aVar.t() == 1) {
            a5.a.C0001a c0001aQ = aVar.q();
            c0001aQ.f153c = this;
            c0001aQ.f154d = aVar.m();
            aVar.D0(0);
            return;
        }
        if (obj == null) {
            map.put(this.f15555a.f17580a, objE);
        } else {
            h(obj, objE);
        }
    }

    public b2 k(a5.h hVar) {
        if (this.f15536c == null) {
            z4.b bVarE = this.f15555a.e();
            if (bVarE == null || bVarE.deserializeUsing() == Void.class) {
                com.alibaba.fastjson.util.d dVar = this.f15555a;
                this.f15536c = hVar.o(dVar.f17584e, dVar.f17585f);
            } else {
                try {
                    this.f15536c = (b2) bVarE.deserializeUsing().newInstance();
                } catch (Exception e10) {
                    throw new JSONException("create deserializeUsing ObjectDeserializer error", e10);
                }
            }
        }
        return this.f15536c;
    }
}
