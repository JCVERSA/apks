package com.yandex.div.core.view2.divs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.util.mask.BaseInputMask;
import com.yandex.div.core.util.mask.b;
import com.yandex.div.core.util.mask.c;
import com.yandex.div.core.util.mask.d;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivCurrencyInputMask;
import com.yandex.div2.DivFixedLengthInputMask;
import com.yandex.div2.DivFontWeight;
import com.yandex.div2.DivInput;
import com.yandex.div2.DivInputFilter;
import com.yandex.div2.DivInputMask;
import com.yandex.div2.DivInputValidator;
import com.yandex.div2.DivInputValidatorExpression;
import com.yandex.div2.DivInputValidatorRegex;
import com.yandex.div2.DivPhoneInputMask;
import com.yandex.div2.DivSizeUnit;
import defpackage.a15;
import defpackage.ae5;
import defpackage.b5;
import defpackage.bob;
import defpackage.c74;
import defpackage.cu2;
import defpackage.du2;
import defpackage.e74;
import defpackage.eg2;
import defpackage.fnb;
import defpackage.gr8;
import defpackage.jr8;
import defpackage.l1a;
import defpackage.mj3;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.s74;
import defpackage.tj3;
import defpackage.tv2;
import defpackage.ua0;
import defpackage.vr8;
import defpackage.wc3;
import defpackage.wu2;
import defpackage.xc3;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.yl2;
import defpackage.z05;
import defpackage.z71;
import defpackage.zfb;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Regex;

public final class DivInputBinder extends wu2 {
    public final DivBaseBinder b;
    public final cu2 c;
    public final com.yandex.div.core.expression.variables.c d;
    public final DivActionBinder e;
    public final b5 f;
    public final xc3 g;

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;
        public static final int[] d;

        static {
            int[] iArr = new int[DivAlignmentHorizontal.values().length];
            try {
                iArr[DivAlignmentHorizontal.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAlignmentHorizontal.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAlignmentHorizontal.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivAlignmentHorizontal.START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivAlignmentHorizontal.END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
            int[] iArr2 = new int[DivInput.KeyboardType.values().length];
            try {
                iArr2[DivInput.KeyboardType.SINGLE_LINE_TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DivInput.KeyboardType.MULTI_LINE_TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DivInput.KeyboardType.EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[DivInput.KeyboardType.URI.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[DivInput.KeyboardType.NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[DivInput.KeyboardType.PHONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[DivInput.KeyboardType.PASSWORD.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            b = iArr2;
            int[] iArr3 = new int[DivInput.EnterKeyType.values().length];
            try {
                iArr3[DivInput.EnterKeyType.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[DivInput.EnterKeyType.SEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[DivInput.EnterKeyType.DONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[DivInput.EnterKeyType.SEARCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr3[DivInput.EnterKeyType.GO.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            c = iArr3;
            int[] iArr4 = new int[DivInput.Autocapitalization.values().length];
            try {
                iArr4[DivInput.Autocapitalization.SENTENCES.ordinal()] = 1;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[DivInput.Autocapitalization.WORDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr4[DivInput.Autocapitalization.ALL_CHARACTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused20) {
            }
            d = iArr4;
        }
    }

    public static final class b implements View.OnLayoutChangeListener {
        public final tv2 b;
        public final fnb c;
        public final DivInputView d;
        public final boolean e;
        public final wc3 f;
        public final IllegalArgumentException g;

        public b(tv2 tv2Var, fnb fnbVar, DivInputView divInputView, boolean z, wc3 wc3Var, IllegalArgumentException illegalArgumentException) {
            this.b = tv2Var;
            this.c = fnbVar;
            this.d = divInputView;
            this.e = z;
            this.f = wc3Var;
            this.g = illegalArgumentException;
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            int iA = this.b.a(this.c.a());
            if (iA == -1) {
                this.f.e(this.g);
                return;
            }
            View viewFindViewById = this.d.getRootView().findViewById(iA);
            if (viewFindViewById != null) {
                viewFindViewById.setLabelFor(this.e ? -1 : this.d.getId());
            } else {
                this.f.e(this.g);
            }
        }
    }

    public static final class c implements TextWatcher {
        public final List b;
        public final DivInputBinder c;
        public final DivInputView d;
        public final Div2View e;
        public final oj3 f;

        public c(List list, DivInputBinder divInputBinder, DivInputView divInputView, Div2View div2View, oj3 oj3Var) {
            this.b = list;
            this.c = divInputBinder;
            this.d = divInputView;
            this.e = div2View;
            this.f = oj3Var;
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (editable != null) {
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    this.c.U((fnb) it.next(), String.valueOf(this.d.getText()), this.d, this.e, this.f);
                }
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivInputBinder(DivBaseBinder divBaseBinder, cu2 cu2Var, com.yandex.div.core.expression.variables.c cVar, DivActionBinder divActionBinder, b5 b5Var, xc3 xc3Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(cu2Var, "typefaceResolver");
        y45.j(cVar, "variableBinder");
        y45.j(divActionBinder, "actionBinder");
        y45.j(b5Var, "accessibilityStateProvider");
        y45.j(xc3Var, "errorCollectors");
        this.b = divBaseBinder;
        this.c = cu2Var;
        this.d = cVar;
        this.e = divActionBinder;
        this.f = b5Var;
        this.g = xc3Var;
    }

    public final void A(final DivInputView divInputView, final com.yandex.div.core.view2.a aVar, final DivInput divInput, final DivInput divInput2, oj3 oj3Var) {
        Expression expression;
        qc2 qc2VarF = null;
        if (DivDataExtensionsKt.j(divInput.K, divInput2 != null ? divInput2.K : null)) {
            return;
        }
        r(divInputView, aVar, divInput, divInput2);
        if (DivDataExtensionsKt.D(divInput.K)) {
            return;
        }
        DivInput.NativeInterface nativeInterface = divInput.K;
        if (nativeInterface != null && (expression = nativeInterface.a) != null) {
            qc2VarF = expression.f(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).intValue());
                    return zfb.a;
                }

                public final void invoke(int i) {
                    this.this$0.r(divInputView, aVar, divInput, divInput2);
                }
            });
        }
        divInputView.addSubscription(qc2VarF);
    }

    public final void B(DivInputView divInputView, DivInput divInput, com.yandex.div.core.view2.a aVar, oj3 oj3Var) {
        divInputView.addSubscription(divInput.l.f(oj3Var, new DivInputBinder$observeEnterTypeAndActions$callback$1(divInput, oj3Var, divInputView, this, aVar)));
    }

    public final void C(DivInputView divInputView, DivInput divInput, final com.yandex.div.core.view2.a aVar, final e74 e74Var) {
        if (divInput.H != null) {
            return;
        }
        final List<DivInputFilter> list = divInput.n;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        final oj3 oj3VarB = aVar.b();
        e74 e74Var2 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m195invoke(obj);
                return zfb.a;
            }

            public final void m195invoke(Object obj) {
                ua0 gr8Var;
                y45.j(obj, "<anonymous parameter 0>");
                List<DivInputFilter> list3 = list;
                oj3 oj3Var = oj3VarB;
                DivInputBinder divInputBinder = this;
                com.yandex.div.core.view2.a aVar2 = aVar;
                ArrayList arrayList = new ArrayList();
                for (DivInputFilter divInputFilter : list3) {
                    if (divInputFilter instanceof DivInputFilter.c) {
                        try {
                            gr8Var = new gr8((String) ((DivInputFilter.c) divInputFilter).c().a.b(oj3Var));
                        } catch (PatternSyntaxException e) {
                            divInputBinder.g.a(aVar2.a().getDataTag(), aVar2.a().getDivData()).e(new IllegalArgumentException("Invalid regex pattern '" + e.getPattern() + "'.", e));
                            gr8Var = null;
                        }
                    } else {
                        if (!(divInputFilter instanceof DivInputFilter.b)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        gr8Var = new mj3(((DivInputFilter.b) divInputFilter).c().a, oj3Var);
                    }
                    if (gr8Var != null) {
                        arrayList.add(gr8Var);
                    }
                }
                e74Var.invoke(new z05(arrayList));
            }
        };
        for (DivInputFilter divInputFilter : list) {
            if (divInputFilter instanceof DivInputFilter.c) {
                divInputView.addSubscription(((DivInputFilter.c) divInputFilter).c().a.e(oj3VarB, e74Var2));
            } else {
                boolean z = divInputFilter instanceof DivInputFilter.b;
            }
        }
        e74Var2.invoke(zfb.a);
    }

    public final void D(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m196invoke(obj);
                return zfb.a;
            }

            public final void m196invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.q(divInputView, divInput, oj3Var);
            }
        };
        divInputView.addSubscription(divInput.q.f(oj3Var, e74Var));
        divInputView.addSubscription(divInput.E.e(oj3Var, e74Var));
        divInputView.addSubscription(divInput.r.e(oj3Var, e74Var));
    }

    public final void E(final DivInputView divInputView, DivInput divInput, final oj3 oj3Var) {
        final Expression expression = divInput.x;
        if (expression == null) {
            return;
        }
        divInputView.addSubscription(expression.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m197invoke(obj);
                return zfb.a;
            }

            public final void m197invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divInputView.setHighlightColor(((Number) expression.b(oj3Var)).intValue());
            }
        }));
    }

    public final void F(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        divInputView.addSubscription(divInput.y.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m198invoke(obj);
                return zfb.a;
            }

            public final void m198invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divInputView.setHintTextColor(((Number) divInput.y.b(oj3Var)).intValue());
            }
        }));
    }

    public final void G(final DivInputView divInputView, DivInput divInput, final oj3 oj3Var) {
        final Expression expression = divInput.z;
        if (expression == null) {
            return;
        }
        divInputView.addSubscription(expression.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m199invoke(obj);
                return zfb.a;
            }

            public final void m199invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divInputView.setInputHint((String) expression.b(oj3Var));
            }
        }));
    }

    public final void H(final DivInputView divInputView, DivInput divInput, oj3 oj3Var) {
        divInputView.addSubscription(divInput.B.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                if (!z && divInputView.isFocused()) {
                    eg2.a(divInputView);
                }
                divInputView.setEnabled$div_release(z);
            }
        }));
    }

    public final void I(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m200invoke(obj);
                return zfb.a;
            }

            public final void m200invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivInput.KeyboardType keyboardType = (DivInput.KeyboardType) divInput.C.b(oj3Var);
                divInputView.setInputType(this.z(keyboardType) | this.x(divInput, oj3Var));
                divInputView.setHorizontallyScrolling(keyboardType != DivInput.KeyboardType.MULTI_LINE_TEXT);
            }
        };
        divInputView.addSubscription(divInput.C.e(oj3Var, e74Var));
        divInputView.addSubscription(divInput.f.f(oj3Var, e74Var));
    }

    public final void J(final DivInputView divInputView, DivInput divInput, final oj3 oj3Var) {
        final DivSizeUnit divSizeUnit = (DivSizeUnit) divInput.r.b(oj3Var);
        final Expression expression = divInput.F;
        if (expression == null) {
            BaseDivViewExtensionsKt.q(divInputView, null, divSizeUnit);
        } else {
            divInputView.addSubscription(expression.f(oj3Var, new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m201invoke(obj);
                    return zfb.a;
                }

                public final void m201invoke(Object obj) {
                    y45.j(obj, "<anonymous parameter 0>");
                    BaseDivViewExtensionsKt.q(divInputView, (Long) expression.b(oj3Var), divSizeUnit);
                }
            }));
        }
    }

    public final void K(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var, Div2View div2View, final e74 e74Var) {
        Expression expression;
        qc2 qc2VarE;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final wc3 wc3VarA = this.g.a(div2View.getDataTag(), div2View.getDivData());
        final KeyListener keyListener = divInputView.getKeyListener();
        final s74 s74Var = new s74() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((Exception) obj, (c74) obj2);
                return zfb.a;
            }

            public final void invoke(Exception exc, c74 c74Var) {
                y45.j(exc, "exception");
                y45.j(c74Var, "other");
                if (!(exc instanceof PatternSyntaxException)) {
                    c74Var.invoke();
                    return;
                }
                wc3VarA.e(new IllegalArgumentException("Invalid regex pattern '" + ((PatternSyntaxException) exc).getPattern() + "'."));
            }
        };
        e74 e74Var2 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m202invoke(obj);
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void m202invoke(Object obj) {
                BaseInputMask baseInputMask;
                Locale localeForLanguageTag;
                y45.j(obj, "<anonymous parameter 0>");
                DivInputMask divInputMask = divInput.H;
                T cVar = 0;
                yl2 yl2VarB = divInputMask != null ? divInputMask.b() : null;
                Ref$ObjectRef<BaseInputMask> ref$ObjectRef2 = ref$ObjectRef;
                if (yl2VarB instanceof DivFixedLengthInputMask) {
                    divInputView.setKeyListener(keyListener);
                    DivFixedLengthInputMask divFixedLengthInputMask = (DivFixedLengthInputMask) yl2VarB;
                    String str = (String) divFixedLengthInputMask.b.b(oj3Var);
                    List<DivFixedLengthInputMask.PatternElement> list = divFixedLengthInputMask.c;
                    oj3 oj3Var2 = oj3Var;
                    ArrayList arrayList = new ArrayList(z71.v(list, 10));
                    for (DivFixedLengthInputMask.PatternElement patternElement : list) {
                        char cO1 = l1a.o1((CharSequence) patternElement.a.b(oj3Var2));
                        Expression expression2 = patternElement.c;
                        String str2 = expression2 != null ? (String) expression2.b(oj3Var2) : null;
                        Character chP1 = l1a.p1((CharSequence) patternElement.b.b(oj3Var2));
                        arrayList.add(new BaseInputMask.c(cO1, str2, chP1 != null ? chP1.charValue() : (char) 0));
                    }
                    BaseInputMask.b bVar = new BaseInputMask.b(str, arrayList, ((Boolean) divFixedLengthInputMask.a.b(oj3Var)).booleanValue());
                    baseInputMask = ref$ObjectRef.element;
                    if (baseInputMask != null) {
                        BaseInputMask.z(baseInputMask, bVar, false, 2, null);
                        cVar = baseInputMask;
                    } else {
                        final s74 s74Var2 = s74Var;
                        cVar = new b(bVar, new e74() {
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj2) {
                                invoke((Exception) obj2);
                                return zfb.a;
                            }

                            public final void invoke(Exception exc) {
                                y45.j(exc, "it");
                                s74Var2.invoke(exc, new c74() {
                                    public final void m203invoke() {
                                    }

                                    @Override
                                    public Object invoke() {
                                        m203invoke();
                                        return zfb.a;
                                    }
                                });
                            }
                        });
                    }
                } else if (yl2VarB instanceof DivCurrencyInputMask) {
                    Expression expression3 = ((DivCurrencyInputMask) yl2VarB).a;
                    String str3 = expression3 != null ? (String) expression3.b(oj3Var) : null;
                    if (str3 != null) {
                        localeForLanguageTag = Locale.forLanguageTag(str3);
                        wc3 wc3Var = wc3VarA;
                        String languageTag = localeForLanguageTag.toLanguageTag();
                        if (!y45.e(languageTag, str3)) {
                            wc3Var.f(new IllegalArgumentException("Original locale tag '" + str3 + "' is not equals to final one '" + languageTag + '\''));
                        }
                    } else {
                        localeForLanguageTag = Locale.getDefault();
                    }
                    divInputView.setKeyListener(DigitsKeyListener.getInstance("1234567890.,"));
                    BaseInputMask baseInputMask2 = ref$ObjectRef.element;
                    BaseInputMask baseInputMask3 = baseInputMask2;
                    if (baseInputMask3 != null) {
                        y45.h(baseInputMask2, "null cannot be cast to non-null type com.yandex.div.core.util.mask.CurrencyInputMask");
                        y45.i(localeForLanguageTag, CommonUrlParts.LOCALE);
                        ((com.yandex.div.core.util.mask.a) baseInputMask2).H(localeForLanguageTag);
                        cVar = baseInputMask3;
                    } else {
                        y45.i(localeForLanguageTag, CommonUrlParts.LOCALE);
                        final s74 s74Var3 = s74Var;
                        cVar = new com.yandex.div.core.util.mask.a(localeForLanguageTag, new e74() {
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj2) {
                                invoke((Exception) obj2);
                                return zfb.a;
                            }

                            public final void invoke(Exception exc) {
                                y45.j(exc, "it");
                                s74Var3.invoke(exc, new c74() {
                                    public final void m204invoke() {
                                    }

                                    @Override
                                    public Object invoke() {
                                        m204invoke();
                                        return zfb.a;
                                    }
                                });
                            }
                        });
                    }
                } else if (yl2VarB instanceof DivPhoneInputMask) {
                    divInputView.setKeyListener(DigitsKeyListener.getInstance("1234567890"));
                    baseInputMask = ref$ObjectRef.element;
                    if (baseInputMask != null) {
                        BaseInputMask.z(baseInputMask, d.b(), false, 2, null);
                        cVar = baseInputMask;
                    } else {
                        final s74 s74Var4 = s74Var;
                        cVar = new c(new e74() {
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj2) {
                                invoke((Exception) obj2);
                                return zfb.a;
                            }

                            public final void invoke(Exception exc) {
                                y45.j(exc, "it");
                                s74Var4.invoke(exc, new c74() {
                                    public final void m205invoke() {
                                    }

                                    @Override
                                    public Object invoke() {
                                        m205invoke();
                                        return zfb.a;
                                    }
                                });
                            }
                        });
                    }
                } else {
                    divInputView.setKeyListener(keyListener);
                }
                ref$ObjectRef2.element = cVar;
                e74Var.invoke(ref$ObjectRef.element);
            }
        };
        DivInputMask divInputMask = divInput.H;
        yl2 yl2VarB = divInputMask != null ? divInputMask.b() : null;
        if (yl2VarB instanceof DivFixedLengthInputMask) {
            DivFixedLengthInputMask divFixedLengthInputMask = (DivFixedLengthInputMask) yl2VarB;
            divInputView.addSubscription(divFixedLengthInputMask.b.e(oj3Var, e74Var2));
            for (DivFixedLengthInputMask.PatternElement patternElement : divFixedLengthInputMask.c) {
                divInputView.addSubscription(patternElement.a.e(oj3Var, e74Var2));
                Expression expression2 = patternElement.c;
                if (expression2 != null) {
                    divInputView.addSubscription(expression2.e(oj3Var, e74Var2));
                }
                divInputView.addSubscription(patternElement.b.e(oj3Var, e74Var2));
            }
            divInputView.addSubscription(divFixedLengthInputMask.a.e(oj3Var, e74Var2));
        } else if ((yl2VarB instanceof DivCurrencyInputMask) && (expression = ((DivCurrencyInputMask) yl2VarB).a) != null && (qc2VarE = expression.e(oj3Var, e74Var2)) != null) {
            divInputView.addSubscription(qc2VarE);
        }
        e74Var2.invoke(zfb.a);
    }

    public final void L(final DivInputView divInputView, DivInput divInput, final oj3 oj3Var) {
        final Expression expression = divInput.I;
        if (expression == null) {
            return;
        }
        divInputView.addSubscription(expression.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m206invoke(obj);
                return zfb.a;
            }

            public final void m206invoke(Object obj) {
                int i;
                y45.j(obj, "<anonymous parameter 0>");
                DivInputView divInputView2 = divInputView;
                long jLongValue = ((Number) expression.b(oj3Var)).longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i = (int) jLongValue;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue + "' to Int");
                    }
                    i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                divInputView2.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(i)});
            }
        }));
    }

    public final void M(final DivInputView divInputView, DivInput divInput, final oj3 oj3Var) {
        final Expression expression = divInput.J;
        if (expression == null) {
            return;
        }
        divInputView.addSubscription(expression.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m207invoke(obj);
                return zfb.a;
            }

            public final void m207invoke(Object obj) {
                int i;
                y45.j(obj, "<anonymous parameter 0>");
                DivInputView divInputView2 = divInputView;
                long jLongValue = ((Number) expression.b(oj3Var)).longValue();
                long j = jLongValue >> 31;
                if (j == 0 || j == -1) {
                    i = (int) jLongValue;
                } else {
                    ae5 ae5Var = ae5.a;
                    if (xi.o()) {
                        xi.i("Unable convert '" + jLongValue + "' to Int");
                    }
                    i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                }
                divInputView2.setMaxLines(i);
            }
        }));
    }

    public final void N(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        divInputView.addSubscription(divInput.O.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m208invoke(obj);
                return zfb.a;
            }

            public final void m208invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divInputView.setSelectAllOnFocus(((Boolean) divInput.O.b(oj3Var)).booleanValue());
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O(final DivInputView divInputView, DivInput divInput, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
        String strA;
        String str;
        yl2 yl2VarB;
        Div2View div2ViewA = aVar.a();
        divInputView.removeAfterTextChangeListener();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        K(divInputView, divInput, aVar.b(), div2ViewA, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((BaseInputMask) obj);
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void invoke(BaseInputMask baseInputMask) {
                ref$ObjectRef.element = baseInputMask;
                if (baseInputMask != 0) {
                    DivInputView divInputView2 = divInputView;
                    divInputView2.setText(baseInputMask.q());
                    divInputView2.setSelection(baseInputMask.l());
                }
            }
        });
        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        C(divInputView, divInput, aVar, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z05) obj);
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void invoke(z05 z05Var) {
                String string;
                ref$ObjectRef2.element = z05Var;
                if (z05Var != 0) {
                    DivInputView divInputView2 = divInputView;
                    Editable editableText = divInputView2.getEditableText();
                    if (editableText == null || (string = editableText.toString()) == null) {
                        string = "";
                    }
                    z05Var.d(string);
                    z05Var.e(divInputView2.getSelectionStart());
                }
            }
        });
        DivInputMask divInputMask = divInput.H;
        if (divInputMask == null) {
            strA = divInput.T;
            str = null;
        } else if (divInputMask == null || (yl2VarB = divInputMask.b()) == null || (strA = yl2VarB.a()) == null) {
            return;
        } else {
            str = divInput.T;
        }
        divInputView.addSubscription(this.d.a(aVar, strA, w(divInputView, (BaseInputMask) ref$ObjectRef.element, (z05) ref$ObjectRef2.element, div2ViewA, str), divStatePath));
        S(divInputView, divInput, aVar.b(), div2ViewA);
    }

    public final void P(final DivInputView divInputView, final Expression expression, final Expression expression2, final oj3 oj3Var) {
        s(divInputView, (DivAlignmentHorizontal) expression.b(oj3Var), (DivAlignmentVertical) expression2.b(oj3Var));
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m209invoke(obj);
                return zfb.a;
            }

            public final void m209invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.s(divInputView, (DivAlignmentHorizontal) expression.b(oj3Var), (DivAlignmentVertical) expression2.b(oj3Var));
            }
        };
        divInputView.addSubscription(expression.e(oj3Var, e74Var));
        divInputView.addSubscription(expression2.e(oj3Var, e74Var));
    }

    public final void Q(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        divInputView.addSubscription(divInput.S.f(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m210invoke(obj);
                return zfb.a;
            }

            public final void m210invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                divInputView.setTextColor(((Number) divInput.S.b(oj3Var)).intValue());
            }
        }));
    }

    public final void R(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var) {
        qc2 qc2VarF;
        t(divInputView, divInput, oj3Var);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m211invoke(obj);
                return zfb.a;
            }

            public final void m211invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.t(divInputView, divInput, oj3Var);
            }
        };
        Expression expression = divInput.p;
        if (expression != null && (qc2VarF = expression.f(oj3Var, e74Var)) != null) {
            divInputView.addSubscription(qc2VarF);
        }
        divInputView.addSubscription(divInput.t.e(oj3Var, e74Var));
        Expression expression2 = divInput.u;
        divInputView.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
    }

    public final void S(final DivInputView divInputView, final DivInput divInput, final oj3 oj3Var, final Div2View div2View) {
        final ArrayList arrayList = new ArrayList();
        final wc3 wc3VarA = this.g.a(div2View.getDataTag(), div2View.getDivData());
        final e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).intValue());
                return zfb.a;
            }

            public final void invoke(int i) {
                this.this$0.U(arrayList.get(i), String.valueOf(divInputView.getText()), divInputView, div2View, oj3Var);
            }
        };
        divInputView.addTextChangedListener(new c(arrayList, this, divInputView, div2View, oj3Var));
        e74 e74Var2 = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m212invoke(obj);
                return zfb.a;
            }

            public final void m212invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                arrayList.clear();
                List list = divInput.a0;
                if (list != null) {
                    DivInputBinder divInputBinder = this;
                    oj3 oj3Var2 = oj3Var;
                    wc3 wc3Var = wc3VarA;
                    List<fnb> list2 = arrayList;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        fnb fnbVarT = divInputBinder.T((DivInputValidator) it.next(), oj3Var2, wc3Var);
                        if (fnbVarT != null) {
                            list2.add(fnbVarT);
                        }
                    }
                    List<fnb> list3 = arrayList;
                    DivInputBinder divInputBinder2 = this;
                    DivInputView divInputView2 = divInputView;
                    Div2View div2View2 = div2View;
                    oj3 oj3Var3 = oj3Var;
                    Iterator<T> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        divInputBinder2.U((fnb) it2.next(), String.valueOf(divInputView2.getText()), divInputView2, div2View2, oj3Var3);
                    }
                }
            }
        };
        List list = divInput.a0;
        if (list != null) {
            final int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                DivInputValidator divInputValidator = (DivInputValidator) obj;
                if (divInputValidator instanceof DivInputValidator.c) {
                    DivInputValidator.c cVar = (DivInputValidator.c) divInputValidator;
                    divInputView.addSubscription(cVar.c().c.e(oj3Var, e74Var2));
                    divInputView.addSubscription(cVar.c().b.e(oj3Var, e74Var2));
                    divInputView.addSubscription(cVar.c().a.e(oj3Var, e74Var2));
                } else {
                    if (!(divInputValidator instanceof DivInputValidator.b)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    DivInputValidator.b bVar = (DivInputValidator.b) divInputValidator;
                    divInputView.addSubscription(bVar.c().b.e(oj3Var, new e74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj2) {
                            invoke(((Boolean) obj2).booleanValue());
                            return zfb.a;
                        }

                        public final void invoke(boolean z) {
                            e74Var.invoke(Integer.valueOf(i));
                        }
                    }));
                    divInputView.addSubscription(bVar.c().c.e(oj3Var, e74Var2));
                    divInputView.addSubscription(bVar.c().a.e(oj3Var, e74Var2));
                }
                i = i2;
            }
        }
        e74Var2.invoke(zfb.a);
    }

    public final fnb T(DivInputValidator divInputValidator, final oj3 oj3Var, wc3 wc3Var) {
        if (!(divInputValidator instanceof DivInputValidator.c)) {
            if (!(divInputValidator instanceof DivInputValidator.b)) {
                throw new NoWhenBranchMatchedException();
            }
            final DivInputValidatorExpression divInputValidatorExpressionC = ((DivInputValidator.b) divInputValidator).c();
            return new fnb(new tj3(((Boolean) divInputValidatorExpressionC.a.b(oj3Var)).booleanValue(), new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Boolean invoke() {
                    return (Boolean) divInputValidatorExpressionC.b.b(oj3Var);
                }
            }), divInputValidatorExpressionC.d, (String) divInputValidatorExpressionC.c.b(oj3Var));
        }
        DivInputValidatorRegex divInputValidatorRegexC = ((DivInputValidator.c) divInputValidator).c();
        try {
            return new fnb(new jr8(new Regex((String) divInputValidatorRegexC.c.b(oj3Var)), ((Boolean) divInputValidatorRegexC.a.b(oj3Var)).booleanValue()), divInputValidatorRegexC.d, (String) divInputValidatorRegexC.b.b(oj3Var));
        } catch (PatternSyntaxException e) {
            wc3Var.e(new IllegalArgumentException("Invalid regex pattern '" + e.getPattern() + '\'', e));
            return null;
        }
    }

    public final void U(fnb fnbVar, String str, DivInputView divInputView, Div2View div2View, oj3 oj3Var) {
        boolean zB = fnbVar.b().b(str);
        bob.a.d(div2View, fnbVar.c(), String.valueOf(zB), oj3Var);
        u(fnbVar, div2View, divInputView, zB);
    }

    public final void q(DivInputView divInputView, DivInput divInput, oj3 oj3Var) {
        int i;
        long jLongValue = ((Number) divInput.q.b(oj3Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            i = (int) jLongValue;
        } else {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue + "' to Int");
            }
            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        BaseDivViewExtensionsKt.k(divInputView, i, (DivSizeUnit) divInput.r.b(oj3Var));
        BaseDivViewExtensionsKt.p(divInputView, ((Number) divInput.E.b(oj3Var)).doubleValue(), i);
    }

    public final void r(DivInputView divInputView, com.yandex.div.core.view2.a aVar, DivInput divInput, DivInput divInput2) {
        Drawable nativeBackground;
        Drawable drawable;
        Expression expression;
        oj3 oj3VarB = aVar.b();
        DivInput.NativeInterface nativeInterface = divInput.K;
        int iIntValue = (nativeInterface == null || (expression = nativeInterface.a) == null) ? 0 : ((Number) expression.b(oj3VarB)).intValue();
        if (iIntValue == 0 || (nativeBackground = divInputView.getNativeBackground()) == null) {
            drawable = null;
        } else {
            nativeBackground.setTint(iIntValue);
            drawable = nativeBackground;
        }
        this.b.y(aVar, divInputView, divInput, divInput2, vr8.a(divInputView), drawable);
    }

    public final void s(DivInputView divInputView, DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical) {
        divInputView.setGravity(BaseDivViewExtensionsKt.O(divAlignmentHorizontal, divAlignmentVertical));
        int i = divAlignmentHorizontal == null ? -1 : a.a[divAlignmentHorizontal.ordinal()];
        int i2 = 5;
        if (i != 1) {
            if (i == 2) {
                i2 = 4;
            } else if (i == 3 || (i != 4 && i == 5)) {
                i2 = 6;
            }
        }
        divInputView.setTextAlignment(i2);
    }

    public final void t(DivInputView divInputView, DivInput divInput, oj3 oj3Var) {
        cu2 cu2Var = this.c;
        Expression expression = divInput.p;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        DivFontWeight divFontWeight = (DivFontWeight) divInput.t.b(oj3Var);
        Expression expression2 = divInput.u;
        divInputView.setTypeface(du2.a(cu2Var, str, divFontWeight, expression2 != null ? (Long) expression2.b(oj3Var) : null));
    }

    public final void u(fnb fnbVar, Div2View div2View, DivInputView divInputView, boolean z) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Can't find label with id '" + fnbVar.a() + '\'');
        wc3 wc3VarA = this.g.a(div2View.getDataTag(), div2View.getDivData());
        tv2 tv2VarI = div2View.getViewComponent().i();
        if (!divInputView.isLaidOut() || divInputView.isLayoutRequested()) {
            divInputView.addOnLayoutChangeListener(new b(tv2VarI, fnbVar, divInputView, z, wc3VarA, illegalArgumentException));
            return;
        }
        int iA = tv2VarI.a(fnbVar.a());
        if (iA == -1) {
            wc3VarA.e(illegalArgumentException);
            return;
        }
        View viewFindViewById = divInputView.getRootView().findViewById(iA);
        if (viewFindViewById != null) {
            viewFindViewById.setLabelFor(z ? -1 : divInputView.getId());
        } else {
            wc3VarA.e(illegalArgumentException);
        }
    }

    @Override
    public void b(DivInputView divInputView, com.yandex.div.core.view2.a aVar, DivInput divInput, DivInput divInput2, DivStatePath divStatePath) {
        y45.j(divInputView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divInput, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        oj3 oj3VarB = aVar.b();
        divInputView.setFocusable(true);
        divInputView.setFocusableInTouchMode(true);
        divInputView.setTextAlignment(5);
        b5 b5Var = this.f;
        Context context = divInputView.getContext();
        y45.i(context, "context");
        divInputView.setAccessibilityEnabled$div_release(b5Var.c(context));
        A(divInputView, aVar, divInput, divInput2, oj3VarB);
        D(divInputView, divInput, oj3VarB);
        R(divInputView, divInput, oj3VarB);
        Q(divInputView, divInput, oj3VarB);
        P(divInputView, divInput.Q, divInput.R, oj3VarB);
        J(divInputView, divInput, oj3VarB);
        M(divInputView, divInput, oj3VarB);
        L(divInputView, divInput, oj3VarB);
        G(divInputView, divInput, oj3VarB);
        F(divInputView, divInput, oj3VarB);
        E(divInputView, divInput, oj3VarB);
        I(divInputView, divInput, oj3VarB);
        B(divInputView, divInput, aVar, oj3VarB);
        N(divInputView, divInput, oj3VarB);
        H(divInputView, divInput, oj3VarB);
        O(divInputView, divInput, aVar, divStatePath);
        divInputView.setFocusTracker$div_release(aVar.a().getInputFocusTracker());
        a15 focusTracker = divInputView.getFocusTracker();
        if (focusTracker != null) {
            focusTracker.e(divInputView);
        }
    }

    public final DivInputBinder$createCallbacks$1 w(DivInputView divInputView, BaseInputMask baseInputMask, z05 z05Var, Div2View div2View, String str) {
        return new DivInputBinder$createCallbacks$1(baseInputMask, z05Var, divInputView, str, div2View);
    }

    public final int x(DivInput divInput, oj3 oj3Var) {
        int i = a.d[((DivInput.Autocapitalization) divInput.f.b(oj3Var)).ordinal()];
        if (i == 1) {
            return 16384;
        }
        if (i != 2) {
            return i != 3 ? 0 : 4096;
        }
        return 8192;
    }

    public final int y(DivInput.EnterKeyType enterKeyType) {
        int i = a.c[enterKeyType.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 4;
        }
        if (i == 3) {
            return 6;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final int z(DivInput.KeyboardType keyboardType) {
        switch (a.b[keyboardType.ordinal()]) {
            case 1:
                return 1;
            case 2:
                return 131073;
            case 3:
                return 33;
            case 4:
                return 17;
            case 5:
                return 12290;
            case 6:
                return 3;
            case 7:
                return 129;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
