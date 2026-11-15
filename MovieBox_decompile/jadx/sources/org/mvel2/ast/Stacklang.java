package org.mvel2.ast;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.push.bean.MsgStyle;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.g;
import org.mvel2.util.m;

public class Stacklang extends BlockNode {
    static final Map<String, Integer> opcodes;
    List<b> instructionList;
    ParserContext pCtx;

    private static class b {

        int f68787a;

        String f68788b;

        Object f68789c;

        private b() {
        }
    }

    static {
        HashMap map = new HashMap();
        opcodes = map;
        map.put(MsgStyle.SOURCE_PUSH, 102);
        map.put(TmcStartParams.BACK_BEHAVIOR_POP, 103);
        map.put(NativeImgComponent.EVENT_LOAD, 104);
        map.put("ldtype", 105);
        map.put("invoke", 106);
        map.put(PlaceTypes.STORE, 109);
        map.put("getfield", 107);
        map.put("storefield", Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY));
        map.put("dup", 110);
        map.put("jump", 112);
        map.put("jumpif", 113);
        map.put("label", 111);
        map.put("eq", 18);
        map.put("ne", 19);
        map.put("reduce", Integer.valueOf(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE));
        map.put("xswap", Integer.valueOf(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        map.put("swap", Integer.valueOf(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE));
    }

    public Stacklang(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.blockStart = i10;
        this.blockOffset = i11;
        this.fields = i12 | 4194304;
        String[] strArrSplit = new String(cArr, i10, i11).split(";");
        this.instructionList = new ArrayList(strArrSplit.length);
        for (String str : strArrSplit) {
            this.instructionList.add(parseInstruction(str.trim()));
        }
        this.pCtx = parserContext;
    }

    private static b parseInstruction(String str) {
        int iIndexOf = str.indexOf(32);
        b bVar = new b();
        String strSubstring = iIndexOf == -1 ? str : str.substring(0, iIndexOf);
        Map<String, Integer> map = opcodes;
        if (map.containsKey(strSubstring)) {
            bVar.f68787a = map.get(strSubstring).intValue();
        }
        if (strSubstring != str) {
            bVar.f68788b = str.substring(iIndexOf + 1);
        }
        return bVar;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Field field;
        Method methodL;
        Constructor constructorN;
        g gVar = (g) obj;
        int size = this.instructionList.size();
        int iIntValue = 0;
        while (iIntValue < size) {
            b bVar = this.instructionList.get(iIntValue);
            System.out.println(gVar.toString() + " >> " + bVar.f68787a + ":" + bVar.f68788b);
            int i10 = bVar.f68787a;
            if (i10 == 18) {
                gVar.q(Boolean.valueOf(gVar.n().equals(gVar.n())));
            } else if (i10 != 19) {
                switch (i10) {
                    case 102:
                        if (bVar.f68789c == null) {
                            bVar.f68789c = org.mvel2.d.l(bVar.f68788b, obj, variableResolverFactory);
                        }
                        gVar.q(bVar.f68789c);
                        break;
                    case 103:
                        gVar.n();
                        break;
                    case 104:
                        if (bVar.f68789c == null) {
                            bVar.f68789c = variableResolverFactory.getVariableResolver(bVar.f68788b);
                        }
                        gVar.q(((VariableResolver) bVar.f68789c).getValue());
                        break;
                    case 105:
                        try {
                            if (bVar.f68789c == null) {
                                bVar.f68789c = m.v(bVar.f68788b, this.pCtx);
                            }
                            gVar.q(bVar.f68789c);
                        } catch (ClassNotFoundException e10) {
                            throw new CompileException("error", this.expr, this.blockStart, e10);
                        }
                        break;
                    case 106:
                        g gVar2 = new g();
                        while (!gVar.g() && !(gVar.k() instanceof Class)) {
                            gVar2.q(gVar.n());
                        }
                        if (gVar.g()) {
                            throw new CompileException("invoke without class", this.expr, this.blockStart);
                        }
                        Object[] objArr = new Object[gVar2.t()];
                        int i11 = 0;
                        while (!gVar2.g()) {
                            objArr[i11] = gVar2.n();
                            i11++;
                        }
                        if ("<init>".equals(bVar.f68788b)) {
                            Object obj3 = bVar.f68789c;
                            if (obj3 == null) {
                                constructorN = m.N(objArr, (Class) gVar.n(), false);
                                bVar.f68789c = constructorN;
                            } else {
                                constructorN = (Constructor) obj3;
                            }
                            try {
                                gVar.q(constructorN.newInstance(objArr));
                            } catch (Exception e11) {
                                throw new CompileException("instantiation error", this.expr, this.blockStart, e11);
                            }
                        } else {
                            if (bVar.f68789c == null) {
                                Class cls = (Class) gVar.n();
                                methodL = m.L(objArr, bVar.f68788b, cls, cls.getDeclaredMethods(), false);
                                bVar.f68789c = methodL;
                            } else {
                                gVar.e();
                                methodL = (Method) bVar.f68789c;
                            }
                            try {
                                gVar.q(methodL.invoke(gVar.g() ? null : gVar.n(), objArr));
                            } catch (Exception e12) {
                                throw new CompileException("invokation error", this.expr, this.blockStart, e12);
                            }
                        }
                        break;
                        break;
                    case 107:
                        try {
                            if (gVar.g() || !(gVar.k() instanceof Class)) {
                                throw new CompileException("getfield without class", this.expr, this.blockStart);
                            }
                            if (bVar.f68789c == null) {
                                field = ((Class) gVar.n()).getField(bVar.f68788b);
                                bVar.f68789c = field;
                            } else {
                                gVar.e();
                                field = (Field) bVar.f68789c;
                            }
                            gVar.q(field.get(gVar.n()));
                        } catch (Exception e13) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e13);
                        }
                        break;
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY:
                        try {
                            if (gVar.g() || !(gVar.k() instanceof Class)) {
                                throw new CompileException("storefield without class", this.expr, this.blockStart);
                            }
                            Class cls2 = (Class) gVar.n();
                            Object objN = gVar.n();
                            cls2.getField(bVar.f68788b).set(gVar.n(), objN);
                            gVar.q(objN);
                        } catch (Exception e14) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e14);
                        }
                        break;
                    case 109:
                        Object obj4 = bVar.f68789c;
                        if (obj4 == null) {
                            bVar.f68789c = variableResolverFactory.createVariable(bVar.f68788b, gVar.k());
                        } else {
                            ((VariableResolver) obj4).setValue(gVar.k());
                        }
                        break;
                    case 110:
                        gVar.f();
                        break;
                    default:
                        switch (i10) {
                            case 112:
                                break;
                            case 113:
                                if (!gVar.p().booleanValue()) {
                                }
                                break;
                            case ASSET_WRITE_ERROR_VALUE:
                                gVar.i();
                                continue;
                            case INVALID_INDEX_URL_VALUE:
                                Object objN2 = gVar.n();
                                Object objN3 = gVar.n();
                                gVar.q(objN2);
                                gVar.q(objN3);
                                continue;
                            case GZIP_ENCODE_ERROR_VALUE:
                                gVar.v();
                                continue;
                            default:
                                continue;
                        }
                        Object obj5 = bVar.f68789c;
                        if (obj5 != null) {
                            iIntValue = ((Integer) obj5).intValue();
                        } else {
                            for (int i12 = 0; i12 < this.instructionList.size(); i12++) {
                                b bVar2 = this.instructionList.get(i12);
                                if (bVar2.f68787a == 111 && bVar.f68788b.equals(bVar2.f68788b)) {
                                    bVar.f68789c = Integer.valueOf(i12);
                                    iIntValue = i12;
                                }
                            }
                        }
                        break;
                }
            } else {
                gVar.q(Boolean.valueOf(!gVar.n().equals(gVar.n())));
            }
            iIntValue++;
        }
        return gVar.n();
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        g gVar = new g();
        gVar.q(getReducedValue(gVar, obj2, variableResolverFactory));
        if (gVar.h()) {
            while (true) {
                gVar.i();
                if (!gVar.h()) {
                    break;
                }
                gVar.u();
            }
        }
        return gVar.k();
    }
}
