package f00;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.res.CodeNode;
import org.mvel2.templates.res.CommentNode;
import org.mvel2.templates.res.CompiledCodeNode;
import org.mvel2.templates.res.CompiledDeclareNode;
import org.mvel2.templates.res.CompiledEvalNode;
import org.mvel2.templates.res.CompiledExpressionNode;
import org.mvel2.templates.res.CompiledForEachNode;
import org.mvel2.templates.res.CompiledIfNode;
import org.mvel2.templates.res.CompiledIncludeNode;
import org.mvel2.templates.res.CompiledNamedIncludeNode;
import org.mvel2.templates.res.CompiledTerminalExpressionNode;
import org.mvel2.templates.res.DeclareNode;
import org.mvel2.templates.res.EndNode;
import org.mvel2.templates.res.EvalNode;
import org.mvel2.templates.res.ExpressionNode;
import org.mvel2.templates.res.ForEachNode;
import org.mvel2.templates.res.IfNode;
import org.mvel2.templates.res.IncludeNode;
import org.mvel2.templates.res.NamedIncludeNode;
import org.mvel2.templates.res.Node;
import org.mvel2.templates.res.TerminalExpressionNode;
import org.mvel2.templates.res.TerminalNode;
import org.mvel2.templates.res.TextNode;
import org.mvel2.util.g;
import org.mvel2.util.m;

public class b {

    private static final Map f59882k;

    private char[] f59883a;

    private int f59884b;

    private int f59885c;

    private int f59886d;

    private int f59887e;

    private int f59888f;

    private int f59889g;

    private boolean f59890h;

    private Map f59891i;

    private ParserContext f59892j;

    static {
        HashMap map = new HashMap();
        f59882k = map;
        map.put("if", 1);
        map.put("else", 2);
        map.put("elseif", 2);
        map.put(TtmlNode.END, 10);
        map.put("foreach", 3);
        map.put("includeNamed", 51);
        map.put("include", 50);
        map.put("comment", 52);
        map.put("code", 53);
        map.put("eval", 55);
        map.put("declare", 54);
        map.put("stop", 70);
    }

    public b(CharSequence charSequence, boolean z10, ParserContext parserContext) {
        this.f59890h = false;
        char[] charArray = charSequence.toString().toCharArray();
        this.f59883a = charArray;
        this.f59884b = charArray.length;
        this.f59890h = z10;
        this.f59892j = parserContext;
    }

    private char[] a() {
        int i10 = this.f59886d - this.f59885c;
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            cArr[i11] = this.f59883a[this.f59885c + i11];
        }
        return cArr;
    }

    private int b() {
        try {
            ParserContext parserContext = new ParserContext();
            char[] cArr = this.f59883a;
            int i10 = this.f59886d;
            this.f59885c = i10;
            this.f59886d = m.e(cArr, i10, this.f59884b, '{', parserContext);
            this.f59888f += parserContext.getLineCount();
            int i11 = this.f59885c + 1;
            this.f59885c = this.f59886d + 1;
            return i11;
        } catch (CompileException e10) {
            e10.setLineNumber(this.f59888f);
            e10.setColumn((this.f59886d - this.f59889g) + 1);
            throw e10;
        }
    }

    private int c() {
        int i10 = this.f59886d + 1;
        this.f59886d = i10;
        while (true) {
            int i11 = this.f59886d;
            if (i11 == this.f59884b || !m.c0(this.f59883a[i11])) {
                break;
            }
            this.f59886d++;
        }
        int i12 = this.f59886d;
        if (i12 == this.f59884b || this.f59883a[i12] != '{') {
            return -1;
        }
        return i10;
    }

    public static CompiledTemplate f(String str) {
        return new b(str, true, ParserContext.create()).d();
    }

    public static CompiledTemplate g(String str, ParserContext parserContext) {
        return new b(str, true, parserContext).d();
    }

    private boolean h(char c10) {
        int i10 = this.f59886d;
        return i10 != this.f59884b && this.f59883a[i10 + 1] == c10;
    }

    private Node i(Node node) {
        int end = node.getEnd();
        int end2 = this.f59887e;
        if (end > end2) {
            end2 = node.getEnd();
        }
        int i10 = this.f59885c;
        if (end2 >= i10) {
            return node;
        }
        int i11 = i10 - 1;
        this.f59887e = i11;
        TextNode textNode = new TextNode(end2, i11);
        node.next = textNode;
        return textNode;
    }

    public CompiledTemplate d() {
        return new CompiledTemplate(this.f59883a, e(null, new g()));
    }

    public Node e(Node node, g gVar) {
        Node compiledIfNode;
        Node terminus;
        this.f59888f = 1;
        Node textNode = node == null ? new TextNode(0, 0) : node;
        Node node2 = textNode;
        while (true) {
            try {
                int i10 = this.f59886d;
                if (i10 >= this.f59884b) {
                    if (!gVar.g()) {
                        CompileException compileException = new CompileException("unclosed @" + ((Node) gVar.k()).getName() + "{} block. expected @end{}", this.f59883a, this.f59886d);
                        compileException.setColumn(this.f59886d - this.f59889g);
                        compileException.setLineNumber(this.f59888f);
                        throw compileException;
                    }
                    int i11 = this.f59885c;
                    char[] cArr = this.f59883a;
                    if (i11 < cArr.length) {
                        TextNode textNode2 = new TextNode(i11, cArr.length);
                        textNode.next = textNode2;
                        textNode = textNode2;
                    }
                    textNode.next = new EndNode();
                    Node next = node2;
                    while (next.getLength() == 0 && (next = next.getNext()) != null) {
                    }
                    if (next == null || next.getLength() != this.f59883a.length - 1) {
                        return node2;
                    }
                    if (next instanceof ExpressionNode) {
                        return this.f59890h ? new CompiledTerminalExpressionNode(next, this.f59892j) : new TerminalExpressionNode(next);
                    }
                    return next;
                }
                char c10 = this.f59883a[i10];
                if (c10 == '\n') {
                    this.f59888f++;
                    this.f59889g = i10 + 1;
                } else if (c10 == '$' || c10 == '@') {
                    if (h(c10)) {
                        int i12 = this.f59886d + 1;
                        this.f59886d = i12;
                        this.f59885c = i12;
                        textNode = i(textNode);
                        textNode.setEnd(textNode.getEnd() + 1);
                        int i13 = this.f59886d + 1;
                        this.f59886d = i13;
                        this.f59887e = i13;
                        this.f59885c = i13;
                    } else {
                        int iC = c();
                        if (iC != -1) {
                            this.f59885c = iC;
                            Map map = f59882k;
                            String str = new String(a());
                            Integer num = (Integer) map.get(str);
                            int iIntValue = num == null ? 0 : num.intValue();
                            if (iIntValue == 1) {
                                Node nodeI = i(textNode);
                                compiledIfNode = this.f59890h ? new CompiledIfNode(this.f59885c, str, this.f59883a, b(), this.f59885c, this.f59892j) : new IfNode(this.f59885c, str, this.f59883a, b(), this.f59885c);
                                nodeI.next = compiledIfNode;
                                gVar.q(compiledIfNode);
                                compiledIfNode.setTerminus(new TerminalNode());
                            } else if (iIntValue != 2) {
                                if (iIntValue != 3) {
                                    if (iIntValue != 10) {
                                        switch (iIntValue) {
                                            case 50:
                                                Node nodeI2 = i(textNode);
                                                if (this.f59890h) {
                                                    int i14 = this.f59885c;
                                                    char[] cArr2 = this.f59883a;
                                                    int iB = b();
                                                    int i15 = this.f59886d + 1;
                                                    this.f59885c = i15;
                                                    compiledIfNode = new CompiledIncludeNode(i14, str, cArr2, iB, i15, this.f59892j);
                                                } else {
                                                    int i16 = this.f59885c;
                                                    char[] cArr3 = this.f59883a;
                                                    int iB2 = b();
                                                    int i17 = this.f59886d + 1;
                                                    this.f59885c = i17;
                                                    compiledIfNode = new IncludeNode(i16, str, cArr3, iB2, i17);
                                                }
                                                nodeI2.next = compiledIfNode;
                                                break;
                                            case AD_REWARD_USER_VALUE:
                                                Node nodeI3 = i(textNode);
                                                if (this.f59890h) {
                                                    int i18 = this.f59885c;
                                                    char[] cArr4 = this.f59883a;
                                                    int iB3 = b();
                                                    int i19 = this.f59886d + 1;
                                                    this.f59885c = i19;
                                                    compiledIfNode = new CompiledNamedIncludeNode(i18, str, cArr4, iB3, i19, this.f59892j);
                                                } else {
                                                    int i20 = this.f59885c;
                                                    char[] cArr5 = this.f59883a;
                                                    int iB4 = b();
                                                    int i21 = this.f59886d + 1;
                                                    this.f59885c = i21;
                                                    compiledIfNode = new NamedIncludeNode(i20, str, cArr5, iB4, i21);
                                                }
                                                nodeI3.next = compiledIfNode;
                                                break;
                                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                                Node nodeI4 = i(textNode);
                                                int i22 = this.f59885c;
                                                char[] cArr6 = this.f59883a;
                                                int iB5 = b();
                                                int i23 = this.f59886d + 1;
                                                this.f59885c = i23;
                                                compiledIfNode = new CommentNode(i22, str, cArr6, iB5, i23);
                                                nodeI4.next = compiledIfNode;
                                                break;
                                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                                Node nodeI5 = i(textNode);
                                                if (this.f59890h) {
                                                    int i24 = this.f59885c;
                                                    char[] cArr7 = this.f59883a;
                                                    int iB6 = b();
                                                    int i25 = this.f59886d + 1;
                                                    this.f59885c = i25;
                                                    compiledIfNode = new CompiledCodeNode(i24, str, cArr7, iB6, i25, this.f59892j);
                                                } else {
                                                    int i26 = this.f59885c;
                                                    char[] cArr8 = this.f59883a;
                                                    int iB7 = b();
                                                    int i27 = this.f59886d + 1;
                                                    this.f59885c = i27;
                                                    compiledIfNode = new CodeNode(i26, str, cArr8, iB7, i27);
                                                }
                                                nodeI5.next = compiledIfNode;
                                                break;
                                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                                Node nodeI6 = i(textNode);
                                                if (this.f59890h) {
                                                    int i28 = this.f59885c;
                                                    char[] cArr9 = this.f59883a;
                                                    int iB8 = b();
                                                    int i29 = this.f59886d + 1;
                                                    this.f59885c = i29;
                                                    compiledIfNode = new CompiledDeclareNode(i28, str, cArr9, iB8, i29, this.f59892j);
                                                } else {
                                                    int i30 = this.f59885c;
                                                    char[] cArr10 = this.f59883a;
                                                    int iB9 = b();
                                                    int i31 = this.f59886d + 1;
                                                    this.f59885c = i31;
                                                    compiledIfNode = new DeclareNode(i30, str, cArr10, iB9, i31);
                                                }
                                                nodeI6.next = compiledIfNode;
                                                gVar.q(compiledIfNode);
                                                compiledIfNode.setTerminus(new TerminalNode());
                                                break;
                                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                                Node nodeI7 = i(textNode);
                                                if (this.f59890h) {
                                                    int i32 = this.f59885c;
                                                    char[] cArr11 = this.f59883a;
                                                    int iB10 = b();
                                                    int i33 = this.f59886d + 1;
                                                    this.f59885c = i33;
                                                    compiledIfNode = new CompiledEvalNode(i32, str, cArr11, iB10, i33, this.f59892j);
                                                } else {
                                                    int i34 = this.f59885c;
                                                    char[] cArr12 = this.f59883a;
                                                    int iB11 = b();
                                                    int i35 = this.f59886d + 1;
                                                    this.f59885c = i35;
                                                    compiledIfNode = new EvalNode(i34, str, cArr12, iB11, i35);
                                                }
                                                nodeI7.next = compiledIfNode;
                                                break;
                                            default:
                                                if (str.length() == 0) {
                                                    Node nodeI8 = i(textNode);
                                                    if (this.f59890h) {
                                                        int i36 = this.f59885c;
                                                        char[] cArr13 = this.f59883a;
                                                        int iB12 = b();
                                                        int i37 = this.f59886d + 1;
                                                        this.f59885c = i37;
                                                        compiledIfNode = new CompiledExpressionNode(i36, str, cArr13, iB12, i37, this.f59892j);
                                                    } else {
                                                        int i38 = this.f59885c;
                                                        char[] cArr14 = this.f59883a;
                                                        int iB13 = b();
                                                        int i39 = this.f59886d + 1;
                                                        this.f59885c = i39;
                                                        compiledIfNode = new ExpressionNode(i38, str, cArr14, iB13, i39);
                                                    }
                                                    nodeI8.next = compiledIfNode;
                                                } else {
                                                    Map map2 = this.f59891i;
                                                    if (map2 == null || !map2.containsKey(str)) {
                                                        throw new RuntimeException("unknown token type: " + str);
                                                    }
                                                    Class cls = (Class) this.f59891i.get(str);
                                                    try {
                                                        Node nodeI9 = i(textNode);
                                                        terminus = (Node) cls.newInstance();
                                                        nodeI9.next = terminus;
                                                        terminus.setBegin(this.f59885c);
                                                        terminus.setName(str);
                                                        terminus.setCStart(b());
                                                        int i40 = this.f59886d + 1;
                                                        this.f59885c = i40;
                                                        terminus.setCEnd(i40);
                                                        terminus.setEnd(terminus.getCEnd());
                                                        terminus.setContents(m.K0(this.f59883a, terminus.getCStart(), (terminus.getCEnd() - terminus.getCStart()) - 1));
                                                        if (terminus.isOpenNode()) {
                                                            gVar.q(terminus);
                                                        }
                                                    } catch (IllegalAccessException unused) {
                                                        throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                    } catch (InstantiationException unused2) {
                                                        throw new RuntimeException("unable to instantiate custom node class: " + cls.getName());
                                                    }
                                                }
                                                break;
                                        }
                                    } else {
                                        Node nodeI10 = i(textNode);
                                        Node node3 = (Node) gVar.n();
                                        terminus = node3.getTerminus();
                                        terminus.setCStart(b());
                                        int i41 = this.f59885c;
                                        this.f59887e = i41;
                                        terminus.setEnd(i41 - 1);
                                        terminus.calculateContents(this.f59883a);
                                        if (node3.demarcate(terminus, this.f59883a)) {
                                            nodeI10.next = terminus;
                                        }
                                    }
                                    textNode = terminus;
                                } else {
                                    Node nodeI11 = i(textNode);
                                    compiledIfNode = this.f59890h ? new CompiledForEachNode(this.f59885c, str, this.f59883a, b(), this.f59885c, this.f59892j) : new ForEachNode(this.f59885c, str, this.f59883a, b(), this.f59885c);
                                    nodeI11.next = compiledIfNode;
                                    gVar.q(compiledIfNode);
                                    compiledIfNode.setTerminus(new TerminalNode());
                                }
                            } else if (!gVar.g() && (gVar.k() instanceof IfNode)) {
                                Node nodeI12 = i(textNode);
                                IfNode ifNode = (IfNode) gVar.n();
                                nodeI12.next = ifNode.getTerminus();
                                ifNode.demarcate(ifNode.getTerminus(), this.f59883a);
                                textNode = this.f59890h ? new CompiledIfNode(this.f59885c, str, this.f59883a, b(), this.f59885c, this.f59892j) : new IfNode(this.f59885c, str, this.f59883a, b(), this.f59885c);
                                ifNode.next = textNode;
                                textNode.setTerminus(ifNode.getTerminus());
                                gVar.q(textNode);
                            }
                            textNode = compiledIfNode;
                        }
                    }
                }
                this.f59886d++;
            } catch (RuntimeException e10) {
                CompileException compileException2 = new CompileException(e10.getMessage(), this.f59883a, this.f59886d, e10);
                compileException2.setExpr(this.f59883a);
                if (e10 instanceof CompileException) {
                    CompileException compileException3 = (CompileException) e10;
                    if (compileException3.getCursor() != -1) {
                        compileException2.setCursor(compileException3.getCursor());
                        if (compileException3.getColumn() == -1) {
                            compileException2.setColumn(compileException2.getCursor() - this.f59889g);
                        } else {
                            compileException2.setColumn(compileException3.getColumn());
                        }
                    }
                }
                compileException2.setLineNumber(this.f59888f);
                throw compileException2;
            }
        }
    }
}
