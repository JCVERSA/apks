package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.mozilla.javascript.ast.ArrayComprehension;
import org.mozilla.javascript.ast.ArrayComprehensionLoop;
import org.mozilla.javascript.ast.ArrayLiteral;
import org.mozilla.javascript.ast.Assignment;
import org.mozilla.javascript.ast.AstNode;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.Block;
import org.mozilla.javascript.ast.BreakStatement;
import org.mozilla.javascript.ast.CatchClause;
import org.mozilla.javascript.ast.Comment;
import org.mozilla.javascript.ast.ConditionalExpression;
import org.mozilla.javascript.ast.ContinueStatement;
import org.mozilla.javascript.ast.DestructuringForm;
import org.mozilla.javascript.ast.DoLoop;
import org.mozilla.javascript.ast.ElementGet;
import org.mozilla.javascript.ast.EmptyExpression;
import org.mozilla.javascript.ast.EmptyStatement;
import org.mozilla.javascript.ast.ErrorNode;
import org.mozilla.javascript.ast.ExpressionStatement;
import org.mozilla.javascript.ast.ForInLoop;
import org.mozilla.javascript.ast.ForLoop;
import org.mozilla.javascript.ast.FunctionCall;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.GeneratorExpression;
import org.mozilla.javascript.ast.GeneratorExpressionLoop;
import org.mozilla.javascript.ast.IdeErrorReporter;
import org.mozilla.javascript.ast.IfStatement;
import org.mozilla.javascript.ast.InfixExpression;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.KeywordLiteral;
import org.mozilla.javascript.ast.Label;
import org.mozilla.javascript.ast.LabeledStatement;
import org.mozilla.javascript.ast.LetNode;
import org.mozilla.javascript.ast.Loop;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NewExpression;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.ObjectLiteral;
import org.mozilla.javascript.ast.ObjectProperty;
import org.mozilla.javascript.ast.ParenthesizedExpression;
import org.mozilla.javascript.ast.PropertyGet;
import org.mozilla.javascript.ast.RegExpLiteral;
import org.mozilla.javascript.ast.ReturnStatement;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.ast.StringLiteral;
import org.mozilla.javascript.ast.SwitchCase;
import org.mozilla.javascript.ast.SwitchStatement;
import org.mozilla.javascript.ast.ThrowStatement;
import org.mozilla.javascript.ast.TryStatement;
import org.mozilla.javascript.ast.UnaryExpression;
import org.mozilla.javascript.ast.VariableDeclaration;
import org.mozilla.javascript.ast.VariableInitializer;
import org.mozilla.javascript.ast.WhileLoop;
import org.mozilla.javascript.ast.WithStatement;
import org.mozilla.javascript.ast.XmlDotQuery;
import org.mozilla.javascript.ast.XmlElemRef;
import org.mozilla.javascript.ast.XmlExpression;
import org.mozilla.javascript.ast.XmlLiteral;
import org.mozilla.javascript.ast.XmlMemberGet;
import org.mozilla.javascript.ast.XmlPropRef;
import org.mozilla.javascript.ast.XmlRef;
import org.mozilla.javascript.ast.XmlString;
import org.mozilla.javascript.ast.Yield;

public class Parser {
    public static final int ARGC_LIMIT = 65536;
    static final int CLEAR_TI_MASK = 65535;
    private static final int GET_ENTRY = 2;
    private static final int METHOD_ENTRY = 8;
    private static final int PROP_ENTRY = 1;
    private static final int SET_ENTRY = 4;
    static final int TI_AFTER_EOL = 65536;
    static final int TI_CHECK_LABEL = 131072;
    boolean calledByCompileFunction;
    CompilerEnvirons compilerEnv;
    private int currentFlaggedToken;
    private Comment currentJsDocComment;
    private LabeledStatement currentLabel;
    Scope currentScope;
    ScriptNode currentScriptOrFn;
    private int currentToken;
    private boolean defaultUseStrictDirective;
    private int endFlags;
    private IdeErrorReporter errorCollector;
    private ErrorReporter errorReporter;
    private boolean inDestructuringAssignment;
    private boolean inForInit;
    protected boolean inUseStrictDirective;
    private Map<String, LabeledStatement> labelSet;
    private List<Jump> loopAndSwitchSet;
    private List<Loop> loopSet;
    protected int nestingOfFunction;
    private boolean parseFinished;
    private int prevNameTokenLineno;
    private int prevNameTokenStart;
    private String prevNameTokenString;
    private List<Comment> scannedComments;
    private char[] sourceChars;
    private String sourceURI;
    private int syntaxErrorCount;
    private i ts;

    public static class ParserException extends RuntimeException {
        private static final long serialVersionUID = 5882582646773765630L;

        private ParserException() {
        }
    }

    public class PerFunctionVariables {
        private Scope savedCurrentScope;
        private ScriptNode savedCurrentScriptOrFn;
        private int savedEndFlags;
        private boolean savedInForInit;
        private Map<String, LabeledStatement> savedLabelSet;
        private List<Jump> savedLoopAndSwitchSet;
        private List<Loop> savedLoopSet;

        public PerFunctionVariables(FunctionNode functionNode) {
            this.savedCurrentScriptOrFn = Parser.this.currentScriptOrFn;
            Parser.this.currentScriptOrFn = functionNode;
            this.savedCurrentScope = Parser.this.currentScope;
            Parser.this.currentScope = functionNode;
            this.savedLabelSet = Parser.this.labelSet;
            Parser.this.labelSet = null;
            this.savedLoopSet = Parser.this.loopSet;
            Parser.this.loopSet = null;
            this.savedLoopAndSwitchSet = Parser.this.loopAndSwitchSet;
            Parser.this.loopAndSwitchSet = null;
            this.savedEndFlags = Parser.this.endFlags;
            Parser.this.endFlags = 0;
            this.savedInForInit = Parser.this.inForInit;
            Parser.this.inForInit = false;
        }

        public void restore() {
            Parser parser = Parser.this;
            parser.currentScriptOrFn = this.savedCurrentScriptOrFn;
            parser.currentScope = this.savedCurrentScope;
            parser.labelSet = this.savedLabelSet;
            Parser.this.loopSet = this.savedLoopSet;
            Parser.this.loopAndSwitchSet = this.savedLoopAndSwitchSet;
            Parser.this.endFlags = this.savedEndFlags;
            Parser.this.inForInit = this.savedInForInit;
        }
    }

    public static class b {
        public AstNode a;
        public int b;
        public int c;

        public b() {
            this.b = -1;
            this.c = -1;
        }
    }

    public Parser() {
        this(new CompilerEnvirons());
    }

    private AstNode addExpr() throws IOException {
        AstNode astNodeMulExpr = mulExpr();
        while (true) {
            int iPeekToken = peekToken();
            int i = this.ts.y;
            if (iPeekToken != 21 && iPeekToken != 22) {
                return astNodeMulExpr;
            }
            consumeToken();
            astNodeMulExpr = new InfixExpression(iPeekToken, astNodeMulExpr, mulExpr(), i);
        }
    }

    private AstNode andExpr() throws IOException {
        AstNode astNodeBitOrExpr = bitOrExpr();
        if (!matchToken(106, true)) {
            return astNodeBitOrExpr;
        }
        return new InfixExpression(106, astNodeBitOrExpr, andExpr(), this.ts.y);
    }

    private List<AstNode> argumentList() throws IOException {
        if (matchToken(89, true)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = this.inForInit;
        this.inForInit = false;
        do {
            try {
                if (peekToken() == 89) {
                    break;
                }
                if (peekToken() == 73) {
                    reportError("msg.yield.parenthesized");
                }
                AstNode astNodeAssignExpr = assignExpr();
                if (peekToken() == 120) {
                    try {
                        arrayList.add(generatorExpression(astNodeAssignExpr, 0, true));
                    } catch (IOException unused) {
                    }
                } else {
                    arrayList.add(astNodeAssignExpr);
                }
            } catch (Throwable th) {
                this.inForInit = z;
                throw th;
            }
        } while (matchToken(90, true));
        this.inForInit = z;
        mustMatchToken(89, "msg.no.paren.arg", true);
        return arrayList;
    }

    private AstNode arrayComprehension(AstNode astNode, int i) throws IOException {
        int i2;
        b bVarCondition;
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 120) {
            arrayList.add(arrayComprehensionLoop());
        }
        if (peekToken() == 113) {
            consumeToken();
            i2 = this.ts.y - i;
            bVarCondition = condition();
        } else {
            i2 = -1;
            bVarCondition = null;
        }
        mustMatchToken(85, "msg.no.bracket.arg", true);
        ArrayComprehension arrayComprehension = new ArrayComprehension(i, this.ts.z - i);
        arrayComprehension.setResult(astNode);
        arrayComprehension.setLoops(arrayList);
        if (bVarCondition != null) {
            arrayComprehension.setIfPosition(i2);
            arrayComprehension.setFilter(bVarCondition.a);
            arrayComprehension.setFilterLp(bVarCondition.b - i);
            arrayComprehension.setFilterRp(bVarCondition.c - i);
        }
        return arrayComprehension;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c6 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:16:0x003e, B:18:0x0046, B:20:0x004d, B:26:0x005b, B:29:0x0071, B:31:0x0077, B:32:0x0082, B:44:0x00b1, B:45:0x00b8, B:47:0x00c6, B:49:0x00cd, B:53:0x00e5, B:37:0x008e, B:39:0x0095, B:42:0x00a5, B:43:0x00aa, B:27:0x0062, B:28:0x006a, B:14:0x003a), top: B:58:0x001a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e4  */
    private ArrayComprehensionLoop arrayComprehensionLoop() throws IOException {
        int i;
        AstNode astNodeCreateNameNode;
        int i2;
        boolean z;
        int i3;
        if (nextToken() != 120) {
            codeBug();
        }
        int i4 = this.ts.y;
        ArrayComprehensionLoop arrayComprehensionLoop = new ArrayComprehensionLoop(i4);
        pushScope(arrayComprehensionLoop);
        boolean z2 = true;
        try {
            if (!matchToken(39, true)) {
                i = -1;
            } else if (this.ts.s().equals("each")) {
                i = this.ts.y - i4;
            } else {
                reportError("msg.no.paren.for");
                i = -1;
            }
            int i5 = mustMatchToken(88, "msg.no.paren.for", true) ? this.ts.y - i4 : -1;
            int iPeekToken = peekToken();
            if (iPeekToken == 39) {
                consumeToken();
                astNodeCreateNameNode = createNameNode();
            } else if (iPeekToken == 84 || iPeekToken == 86) {
                astNodeCreateNameNode = destructuringPrimaryExpr();
                markDestructuring(astNodeCreateNameNode);
            } else {
                reportError("msg.bad.var");
                astNodeCreateNameNode = null;
            }
            if (astNodeCreateNameNode.getType() == 39) {
                defineSymbol(154, this.ts.s(), true);
            }
            int iNextToken = nextToken();
            if (iNextToken != 39) {
                if (iNextToken == 52) {
                    i2 = this.ts.y - i4;
                }
                z = false;
                AstNode astNodeExpr = expr();
                if (mustMatchToken(89, "msg.no.paren.for.ctrl", true)) {
                    i3 = this.ts.y - i4;
                } else {
                    i3 = -1;
                }
                arrayComprehensionLoop.setLength(this.ts.z - i4);
                arrayComprehensionLoop.setIterator(astNodeCreateNameNode);
                arrayComprehensionLoop.setIteratedObject(astNodeExpr);
                arrayComprehensionLoop.setInPosition(i2);
                arrayComprehensionLoop.setEachPosition(i);
                if (i == -1) {
                    z2 = false;
                }
                arrayComprehensionLoop.setIsForEach(z2);
                arrayComprehensionLoop.setParens(i5, i3);
                arrayComprehensionLoop.setIsForOf(z);
                return arrayComprehensionLoop;
            }
            if ("of".equals(this.ts.s())) {
                if (i != -1) {
                    reportError("msg.invalid.for.each");
                }
                i2 = this.ts.y - i4;
                z = true;
            }
            AstNode astNodeExpr2 = expr();
            if (mustMatchToken(89, "msg.no.paren.for.ctrl", true)) {
                i3 = this.ts.y - i4;
            } else {
                i3 = -1;
            }
            arrayComprehensionLoop.setLength(this.ts.z - i4);
            arrayComprehensionLoop.setIterator(astNodeCreateNameNode);
            arrayComprehensionLoop.setIteratedObject(astNodeExpr2);
            arrayComprehensionLoop.setInPosition(i2);
            arrayComprehensionLoop.setEachPosition(i);
            if (i == -1) {
                z2 = false;
            }
            arrayComprehensionLoop.setIsForEach(z2);
            arrayComprehensionLoop.setParens(i5, i3);
            arrayComprehensionLoop.setIsForOf(z);
            return arrayComprehensionLoop;
            reportError("msg.in.after.for.name");
            i2 = -1;
            z = false;
            AstNode astNodeExpr3 = expr();
            if (mustMatchToken(89, "msg.no.paren.for.ctrl", true)) {
                i3 = this.ts.y - i4;
            } else {
                i3 = -1;
            }
            arrayComprehensionLoop.setLength(this.ts.z - i4);
            arrayComprehensionLoop.setIterator(astNodeCreateNameNode);
            arrayComprehensionLoop.setIteratedObject(astNodeExpr3);
            arrayComprehensionLoop.setInPosition(i2);
            arrayComprehensionLoop.setEachPosition(i);
            if (i == -1) {
                z2 = false;
            }
            arrayComprehensionLoop.setIsForEach(z2);
            arrayComprehensionLoop.setParens(i5, i3);
            arrayComprehensionLoop.setIsForOf(z);
            return arrayComprehensionLoop;
        } finally {
            popScope();
        }
    }

    private AstNode arrayLiteral() throws IOException {
        if (this.currentToken != 84) {
            codeBug();
        }
        i iVar = this.ts;
        int i = iVar.y;
        int i2 = iVar.z;
        ArrayList arrayList = new ArrayList();
        ArrayLiteral arrayLiteral = new ArrayLiteral(i);
        int i3 = 0;
        int i4 = -1;
        loop0: while (true) {
            int i5 = 1;
            while (true) {
                int iPeekToken = peekToken();
                if (iPeekToken == 90) {
                    consumeToken();
                    i4 = this.ts.z;
                    if (i5 == 0) {
                        break;
                    }
                    arrayList.add(new EmptyExpression(this.ts.y, 1));
                    i3++;
                } else if (iPeekToken == 162) {
                    consumeToken();
                } else {
                    if (iPeekToken == 85) {
                        consumeToken();
                        i2 = this.ts.z;
                        arrayLiteral.setDestructuringLength(arrayList.size() + i5);
                        arrayLiteral.setSkipCount(i3);
                        if (i4 == -1) {
                            break loop0;
                        }
                        warnTrailingComma(i, arrayList, i4);
                        break loop0;
                    }
                    if (iPeekToken == 120 && i5 == 0 && arrayList.size() == 1) {
                        return arrayComprehension((AstNode) arrayList.get(0), i);
                    }
                    if (iPeekToken == 0) {
                        reportError("msg.no.bracket.arg");
                        break loop0;
                    }
                    if (i5 == 0) {
                        reportError("msg.no.bracket.arg");
                    }
                    arrayList.add(assignExpr());
                    i5 = 0;
                    i4 = -1;
                }
            }
        }
        Iterator<?> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayLiteral.addElement((AstNode) it.next());
        }
        arrayLiteral.setLength(i2 - i);
        return arrayLiteral;
    }

    private AstNode arrowFunction(AstNode astNode) throws IOException {
        int i = this.ts.r;
        int position = astNode != null ? astNode.getPosition() : -1;
        FunctionNode functionNode = new FunctionNode(position);
        functionNode.setFunctionType(4);
        functionNode.setJsDocNode(getAndResetJsDoc());
        Map<String, Node> map = new HashMap<>();
        Set<String> hashSet = new HashSet<>();
        PerFunctionVariables perFunctionVariables = new PerFunctionVariables(functionNode);
        try {
            if (astNode instanceof ParenthesizedExpression) {
                functionNode.setParens(0, astNode.getLength());
                AstNode expression = ((ParenthesizedExpression) astNode).getExpression();
                if (!(expression instanceof EmptyExpression)) {
                    arrowFunctionParams(functionNode, expression, map, hashSet);
                }
            } else {
                arrowFunctionParams(functionNode, astNode, map, hashSet);
            }
            if (!map.isEmpty()) {
                Node node = new Node(90);
                for (Map.Entry<String, Node> entry : map.entrySet()) {
                    node.addChildToBack(createDestructuringAssignment(123, entry.getValue(), createName(entry.getKey())));
                }
                functionNode.putProp(23, node);
            }
            functionNode.setBody(parseFunctionBody(4, functionNode));
            functionNode.setEncodedSourceBounds(position, this.ts.z);
            functionNode.setLength(this.ts.z - position);
            perFunctionVariables.restore();
            if (functionNode.isGenerator()) {
                reportError("msg.arrowfunction.generator");
                return makeErrorNode();
            }
            functionNode.setSourceName(this.sourceURI);
            functionNode.setBaseLineno(i);
            functionNode.setEndLineno(this.ts.r);
            return functionNode;
        } catch (Throwable th) {
            perFunctionVariables.restore();
            throw th;
        }
    }

    private void arrowFunctionParams(FunctionNode functionNode, AstNode astNode, Map<String, Node> map, Set<String> set) {
        if ((astNode instanceof ArrayLiteral) || (astNode instanceof ObjectLiteral)) {
            markDestructuring(astNode);
            functionNode.addParam(astNode);
            String nextTempName = this.currentScriptOrFn.getNextTempName();
            defineSymbol(88, nextTempName, false);
            map.put(nextTempName, astNode);
            return;
        }
        if ((astNode instanceof InfixExpression) && astNode.getType() == 90) {
            InfixExpression infixExpression = (InfixExpression) astNode;
            arrowFunctionParams(functionNode, infixExpression.getLeft(), map, set);
            arrowFunctionParams(functionNode, infixExpression.getRight(), map, set);
            return;
        }
        if (!(astNode instanceof Name)) {
            reportError("msg.no.parm", astNode.getPosition(), astNode.getLength());
            functionNode.addParam(makeErrorNode());
            return;
        }
        functionNode.addParam(astNode);
        String identifier = ((Name) astNode).getIdentifier();
        defineSymbol(88, identifier);
        if (this.inUseStrictDirective) {
            if ("eval".equals(identifier) || "arguments".equals(identifier)) {
                reportError("msg.bad.id.strict", identifier);
            }
            if (set.contains(identifier)) {
                addError("msg.dup.param.strict", identifier);
            }
            set.add(identifier);
        }
    }

    private AstNode assignExpr() throws IOException {
        int iPeekToken = peekToken();
        boolean z = true;
        if (iPeekToken == 73) {
            return returnOrYield(iPeekToken, true);
        }
        AstNode astNodeCondExpr = condExpr();
        int iPeekTokenOrEOL = peekTokenOrEOL();
        if (iPeekTokenOrEOL == 1) {
            iPeekTokenOrEOL = peekToken();
        } else {
            z = false;
        }
        if (91 > iPeekTokenOrEOL || iPeekTokenOrEOL > 102) {
            if (iPeekTokenOrEOL == 83) {
                if (this.currentJsDocComment == null) {
                    return astNodeCondExpr;
                }
                astNodeCondExpr.setJsDocNode(getAndResetJsDoc());
                return astNodeCondExpr;
            }
            if (z || iPeekTokenOrEOL != 165) {
                return astNodeCondExpr;
            }
            consumeToken();
            return arrowFunction(astNodeCondExpr);
        }
        if (this.inDestructuringAssignment) {
            reportError("msg.destruct.default.vals");
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        markDestructuring(astNodeCondExpr);
        Assignment assignment = new Assignment(iPeekTokenOrEOL, astNodeCondExpr, assignExpr(), this.ts.y);
        if (andResetJsDoc != null) {
            assignment.setJsDocNode(andResetJsDoc);
        }
        return assignment;
    }

    private AstNode attributeAccess() throws IOException {
        int iNextToken = nextToken();
        i iVar = this.ts;
        int i = iVar.y;
        if (iNextToken == 23) {
            saveNameTokenData(i, "*", iVar.r);
            return propertyName(i, 0);
        }
        if (iNextToken == 39) {
            return propertyName(i, 0);
        }
        if (iNextToken == 84) {
            return xmlElemRef(i, null, -1);
        }
        reportError("msg.no.name.after.xmlAttr");
        return makeErrorNode();
    }

    private void autoInsertSemicolon(AstNode astNode) throws IOException {
        int iPeekFlaggedToken = peekFlaggedToken();
        int position = astNode.getPosition();
        int i = 65535 & iPeekFlaggedToken;
        if (i != -1 && i != 0) {
            if (i == 83) {
                consumeToken();
                astNode.setLength(this.ts.z - position);
                return;
            } else if (i != 87) {
                if ((iPeekFlaggedToken & 65536) == 0) {
                    reportError("msg.no.semi.stmt");
                    return;
                } else {
                    warnMissingSemi(position, nodeEnd(astNode));
                    return;
                }
            }
        }
        warnMissingSemi(position, Math.max(position + 1, nodeEnd(astNode)));
    }

    private AstNode bitAndExpr() throws IOException {
        AstNode astNodeEqExpr = eqExpr();
        while (matchToken(11, true)) {
            astNodeEqExpr = new InfixExpression(11, astNodeEqExpr, eqExpr(), this.ts.y);
        }
        return astNodeEqExpr;
    }

    private AstNode bitOrExpr() throws IOException {
        AstNode astNodeBitXorExpr = bitXorExpr();
        while (matchToken(9, true)) {
            astNodeBitXorExpr = new InfixExpression(9, astNodeBitXorExpr, bitXorExpr(), this.ts.y);
        }
        return astNodeBitXorExpr;
    }

    private AstNode bitXorExpr() throws IOException {
        AstNode astNodeBitAndExpr = bitAndExpr();
        while (matchToken(10, true)) {
            astNodeBitAndExpr = new InfixExpression(10, astNodeBitAndExpr, bitAndExpr(), this.ts.y);
        }
        return astNodeBitAndExpr;
    }

    private AstNode block() throws IOException {
        if (this.currentToken != 86) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.y;
        Scope scope = new Scope(i);
        scope.setLineno(this.ts.r);
        pushScope(scope);
        try {
            statements(scope);
            mustMatchToken(87, "msg.no.brace.block", true);
            scope.setLength(this.ts.z - i);
            return scope;
        } finally {
            popScope();
        }
    }

    private BreakStatement breakStatement() throws IOException {
        int nodeEnd;
        Name nameCreateNameNode;
        if (this.currentToken != 121) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        int i3 = iVar.z;
        if (peekTokenOrEOL() == 39) {
            nameCreateNameNode = createNameNode();
            nodeEnd = getNodeEnd(nameCreateNameNode);
        } else {
            nodeEnd = i3;
            nameCreateNameNode = null;
        }
        LabeledStatement labeledStatementMatchJumpLabelName = matchJumpLabelName();
        Jump firstLabel = labeledStatementMatchJumpLabelName != null ? labeledStatementMatchJumpLabelName.getFirstLabel() : null;
        if (firstLabel == null && nameCreateNameNode == null) {
            List<Jump> list = this.loopAndSwitchSet;
            if (list == null || list.size() == 0) {
                reportError("msg.bad.break", i2, nodeEnd - i2);
            } else {
                List<Jump> list2 = this.loopAndSwitchSet;
                firstLabel = list2.get(list2.size() - 1);
            }
        }
        BreakStatement breakStatement = new BreakStatement(i2, nodeEnd - i2);
        breakStatement.setBreakLabel(nameCreateNameNode);
        if (firstLabel != null) {
            breakStatement.setBreakTarget(firstLabel);
        }
        breakStatement.setLineno(i);
        return breakStatement;
    }

    private void checkBadIncDec(UnaryExpression unaryExpression) {
        int type = removeParens(unaryExpression.getOperand()).getType();
        if (type == 39 || type == 33 || type == 36 || type == 68 || type == 38) {
            return;
        }
        reportError(unaryExpression.getType() == 107 ? "msg.bad.incr" : "msg.bad.decr");
    }

    private void checkCallRequiresActivation(AstNode astNode) {
        if ((astNode.getType() == 39 && "eval".equals(((Name) astNode).getIdentifier())) || (astNode.getType() == 33 && "eval".equals(((PropertyGet) astNode).getProperty().getIdentifier()))) {
            setRequiresActivation();
        }
    }

    private RuntimeException codeBug() throws RuntimeException {
        throw Kit.codeBug("ts.cursor=" + this.ts.x + ", ts.tokenBeg=" + this.ts.y + ", currentToken=" + this.currentToken);
    }

    private AstNode condExpr() throws IOException {
        AstNode astNodeOrExpr = orExpr();
        if (!matchToken(103, true)) {
            return astNodeOrExpr;
        }
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        boolean z = this.inForInit;
        this.inForInit = false;
        try {
            AstNode astNodeAssignExpr = assignExpr();
            this.inForInit = z;
            int i3 = mustMatchToken(104, "msg.no.colon.cond", true) ? this.ts.y : -1;
            AstNode astNodeAssignExpr2 = assignExpr();
            int position = astNodeOrExpr.getPosition();
            ConditionalExpression conditionalExpression = new ConditionalExpression(position, getNodeEnd(astNodeAssignExpr2) - position);
            conditionalExpression.setLineno(i);
            conditionalExpression.setTestExpression(astNodeOrExpr);
            conditionalExpression.setTrueExpression(astNodeAssignExpr);
            conditionalExpression.setFalseExpression(astNodeAssignExpr2);
            conditionalExpression.setQuestionMarkPosition(i2 - position);
            conditionalExpression.setColonPosition(i3 - position);
            return conditionalExpression;
        } catch (Throwable th) {
            this.inForInit = z;
            throw th;
        }
    }

    private b condition() throws IOException {
        b bVar = new b();
        if (mustMatchToken(88, "msg.no.paren.cond", true)) {
            bVar.b = this.ts.y;
        }
        bVar.a = expr();
        if (mustMatchToken(89, "msg.no.paren.after.cond", true)) {
            bVar.c = this.ts.y;
        }
        AstNode astNode = bVar.a;
        if (astNode instanceof Assignment) {
            addStrictWarning("msg.equal.as.assign", "", astNode.getPosition(), bVar.a.getLength());
        }
        return bVar;
    }

    private void consumeToken() {
        this.currentFlaggedToken = 0;
    }

    private ContinueStatement continueStatement() throws IOException {
        int nodeEnd;
        Name nameCreateNameNode;
        if (this.currentToken != 122) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        int i3 = iVar.z;
        Loop loop = null;
        if (peekTokenOrEOL() == 39) {
            nameCreateNameNode = createNameNode();
            nodeEnd = getNodeEnd(nameCreateNameNode);
        } else {
            nodeEnd = i3;
            nameCreateNameNode = null;
        }
        LabeledStatement labeledStatementMatchJumpLabelName = matchJumpLabelName();
        if (labeledStatementMatchJumpLabelName == null && nameCreateNameNode == null) {
            List<Loop> list = this.loopSet;
            if (list == null || list.size() == 0) {
                reportError("msg.continue.outside");
            } else {
                List<Loop> list2 = this.loopSet;
                loop = list2.get(list2.size() - 1);
            }
        } else {
            if (labeledStatementMatchJumpLabelName == null || !(labeledStatementMatchJumpLabelName.getStatement() instanceof Loop)) {
                reportError("msg.continue.nonloop", i2, nodeEnd - i2);
            }
            if (labeledStatementMatchJumpLabelName != null) {
                loop = (Loop) labeledStatementMatchJumpLabelName.getStatement();
            }
        }
        ContinueStatement continueStatement = new ContinueStatement(i2, nodeEnd - i2);
        if (loop != null) {
            continueStatement.setTarget(loop);
        }
        continueStatement.setLabel(nameCreateNameNode);
        continueStatement.setLineno(i);
        return continueStatement;
    }

    private Name createNameNode() {
        return createNameNode(false, 39);
    }

    private StringLiteral createStringLiteral() {
        i iVar = this.ts;
        int i = iVar.y;
        StringLiteral stringLiteral = new StringLiteral(i, iVar.z - i);
        stringLiteral.setLineno(this.ts.r);
        stringLiteral.setValue(this.ts.s());
        stringLiteral.setQuoteCharacter(this.ts.r());
        return stringLiteral;
    }

    private AstNode defaultXmlNamespace() throws IOException {
        if (this.currentToken != 117) {
            codeBug();
        }
        consumeToken();
        mustHaveXML();
        setRequiresActivation();
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        if (!matchToken(39, true) || !StringLookupFactory.KEY_XML.equals(this.ts.s())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(39, true) || !"namespace".equals(this.ts.s())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(91, true)) {
            reportError("msg.bad.namespace");
        }
        AstNode astNodeExpr = expr();
        UnaryExpression unaryExpression = new UnaryExpression(i2, getNodeEnd(astNodeExpr) - i2);
        unaryExpression.setOperator(75);
        unaryExpression.setOperand(astNodeExpr);
        unaryExpression.setLineno(i);
        return new ExpressionStatement((AstNode) unaryExpression, true);
    }

    private AstNode destructuringPrimaryExpr() throws ParserException, IOException {
        try {
            this.inDestructuringAssignment = true;
            return primaryExpr();
        } finally {
            this.inDestructuringAssignment = false;
        }
    }

    private DoLoop doLoop() throws IOException {
        if (this.currentToken != 119) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.y;
        DoLoop doLoop = new DoLoop(i);
        doLoop.setLineno(this.ts.r);
        enterLoop(doLoop);
        try {
            AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(doLoop);
            mustMatchToken(118, "msg.no.while.do", true);
            doLoop.setWhilePosition(this.ts.y - i);
            b bVarCondition = condition();
            doLoop.setCondition(bVarCondition.a);
            doLoop.setParens(bVarCondition.b - i, bVarCondition.c - i);
            int nodeEnd = getNodeEnd(nextStatementAfterInlineComments);
            doLoop.setBody(nextStatementAfterInlineComments);
            exitLoop();
            if (matchToken(83, true)) {
                nodeEnd = this.ts.z;
            }
            doLoop.setLength(nodeEnd - i);
            return doLoop;
        } catch (Throwable th) {
            exitLoop();
            throw th;
        }
    }

    private void enterLoop(Loop loop) {
        if (this.loopSet == null) {
            this.loopSet = new ArrayList();
        }
        this.loopSet.add(loop);
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(loop);
        pushScope(loop);
        LabeledStatement labeledStatement = this.currentLabel;
        if (labeledStatement != null) {
            labeledStatement.setStatement(loop);
            this.currentLabel.getFirstLabel().setLoop(loop);
            loop.setRelative(-this.currentLabel.getPosition());
        }
    }

    private void enterSwitch(SwitchStatement switchStatement) {
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(switchStatement);
    }

    private AstNode eqExpr() throws IOException {
        AstNode astNodeRelExpr = relExpr();
        while (true) {
            int iPeekToken = peekToken();
            int i = this.ts.y;
            if (iPeekToken != 12 && iPeekToken != 13 && iPeekToken != 46 && iPeekToken != 47) {
                return astNodeRelExpr;
            }
            consumeToken();
            if (this.compilerEnv.getLanguageVersion() == 120) {
                if (iPeekToken == 12) {
                    iPeekToken = 46;
                } else if (iPeekToken == 13) {
                    iPeekToken = 47;
                }
            }
            astNodeRelExpr = new InfixExpression(iPeekToken, astNodeRelExpr, relExpr(), i);
        }
    }

    private void exitLoop() {
        List<Loop> list = this.loopSet;
        Loop loopRemove = list.remove(list.size() - 1);
        List<Jump> list2 = this.loopAndSwitchSet;
        list2.remove(list2.size() - 1);
        if (loopRemove.getParent() != null) {
            loopRemove.setRelative(loopRemove.getParent().getPosition());
        }
        popScope();
    }

    private void exitSwitch() {
        List<Jump> list = this.loopAndSwitchSet;
        list.remove(list.size() - 1);
    }

    private AstNode expr() throws IOException {
        AstNode astNodeAssignExpr = assignExpr();
        int position = astNodeAssignExpr.getPosition();
        while (matchToken(90, true)) {
            int i = this.ts.y;
            if (this.compilerEnv.isStrictMode() && !astNodeAssignExpr.hasSideEffects()) {
                addStrictWarning("msg.no.side.effects", "", position, nodeEnd(astNodeAssignExpr) - position);
            }
            if (peekToken() == 73) {
                reportError("msg.yield.parenthesized");
            }
            astNodeAssignExpr = new InfixExpression(90, astNodeAssignExpr, assignExpr(), i);
        }
        return astNodeAssignExpr;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private Loop forLoop() throws IOException {
        boolean z;
        int i;
        AstNode astNodeExpr;
        AstNode astNodeExpr2;
        boolean z2;
        AstNode astNode;
        AstNode astNodeExpr3;
        int i2;
        Loop loop;
        if (this.currentToken != 120) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i3 = iVar.y;
        int i4 = iVar.r;
        Scope scope = new Scope();
        pushScope(scope);
        try {
            boolean z3 = false;
            if (!matchToken(39, true)) {
                z = false;
                i = -1;
            } else if ("each".equals(this.ts.s())) {
                i = this.ts.y - i3;
                z = true;
            } else {
                reportError("msg.no.paren.for");
                z = false;
                i = -1;
            }
            int i5 = mustMatchToken(88, "msg.no.paren.for", true) ? this.ts.y - i3 : -1;
            AstNode astNodeForLoopInit = forLoopInit(peekToken());
            if (matchToken(52, true)) {
                i2 = this.ts.y - i3;
                astNode = null;
                astNodeExpr3 = expr();
                z2 = false;
                z3 = true;
            } else if (this.compilerEnv.getLanguageVersion() >= 200 && matchToken(39, true) && "of".equals(this.ts.s())) {
                i2 = this.ts.y - i3;
                astNode = null;
                astNodeExpr3 = expr();
                z2 = true;
            } else {
                mustMatchToken(83, "msg.no.semi.for", true);
                if (peekToken() == 83) {
                    astNodeExpr = new EmptyExpression(this.ts.y, 1);
                    astNodeExpr.setLineno(this.ts.r);
                } else {
                    astNodeExpr = expr();
                }
                mustMatchToken(83, "msg.no.semi.for.cond", true);
                int i6 = this.ts.z;
                if (peekToken() == 89) {
                    astNodeExpr2 = new EmptyExpression(i6, 1);
                    astNodeExpr2.setLineno(this.ts.r);
                } else {
                    astNodeExpr2 = expr();
                }
                z2 = false;
                astNode = astNodeExpr2;
                astNodeExpr3 = astNodeExpr;
                i2 = -1;
            }
            int i7 = mustMatchToken(89, "msg.no.paren.for.ctrl", true) ? this.ts.y - i3 : -1;
            if (z3 || z2) {
                ForInLoop forInLoop = new ForInLoop(i3);
                if ((astNodeForLoopInit instanceof VariableDeclaration) && ((VariableDeclaration) astNodeForLoopInit).getVariables().size() > 1) {
                    reportError("msg.mult.index");
                }
                if (z2 && z) {
                    reportError("msg.invalid.for.each");
                }
                forInLoop.setIterator(astNodeForLoopInit);
                forInLoop.setIteratedObject(astNodeExpr3);
                forInLoop.setInPosition(i2);
                forInLoop.setIsForEach(z);
                forInLoop.setEachPosition(i);
                forInLoop.setIsForOf(z2);
                loop = forInLoop;
            } else {
                ForLoop forLoop = new ForLoop(i3);
                forLoop.setInitializer(astNodeForLoopInit);
                forLoop.setCondition(astNodeExpr3);
                forLoop.setIncrement(astNode);
                loop = forLoop;
            }
            this.currentScope.replaceWith(loop);
            popScope();
            enterLoop(loop);
            try {
                AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(loop);
                loop.setLength(getNodeEnd(nextStatementAfterInlineComments) - i3);
                loop.setBody(nextStatementAfterInlineComments);
                exitLoop();
                if (this.currentScope == scope) {
                    popScope();
                }
                loop.setParens(i5, i7);
                loop.setLineno(i4);
                return loop;
            } catch (Throwable th) {
                exitLoop();
                throw th;
            }
        } catch (Throwable th2) {
            if (this.currentScope == scope) {
                popScope();
            }
            throw th2;
        }
    }

    private AstNode forLoopInit(int i) throws IOException {
        AstNode astNodeVariables;
        try {
            this.inForInit = true;
            if (i == 83) {
                astNodeVariables = new EmptyExpression(this.ts.y, 1);
                astNodeVariables.setLineno(this.ts.r);
            } else if (i == 123 || i == 154) {
                consumeToken();
                astNodeVariables = variables(i, this.ts.y, false);
            } else {
                astNodeVariables = expr();
                markDestructuring(astNodeVariables);
            }
            return astNodeVariables;
        } finally {
            this.inForInit = false;
        }
    }

    private FunctionNode function(int i) throws IOException {
        return function(i, false);
    }

    private AstNode generatorExpression(AstNode astNode, int i) throws IOException {
        return generatorExpression(astNode, i, false);
    }

    private GeneratorExpressionLoop generatorExpressionLoop() throws IOException {
        AstNode astNodeCreateNameNode;
        if (nextToken() != 120) {
            codeBug();
        }
        int i = this.ts.y;
        GeneratorExpressionLoop generatorExpressionLoop = new GeneratorExpressionLoop(i);
        pushScope(generatorExpressionLoop);
        try {
            int i2 = mustMatchToken(88, "msg.no.paren.for", true) ? this.ts.y - i : -1;
            int iPeekToken = peekToken();
            if (iPeekToken == 39) {
                consumeToken();
                astNodeCreateNameNode = createNameNode();
            } else if (iPeekToken == 84 || iPeekToken == 86) {
                astNodeCreateNameNode = destructuringPrimaryExpr();
                markDestructuring(astNodeCreateNameNode);
            } else {
                reportError("msg.bad.var");
                astNodeCreateNameNode = null;
            }
            if (astNodeCreateNameNode.getType() == 39) {
                defineSymbol(154, this.ts.s(), true);
            }
            int i3 = mustMatchToken(52, "msg.in.after.for.name", true) ? this.ts.y - i : -1;
            AstNode astNodeExpr = expr();
            int i4 = mustMatchToken(89, "msg.no.paren.for.ctrl", true) ? this.ts.y - i : -1;
            generatorExpressionLoop.setLength(this.ts.z - i);
            generatorExpressionLoop.setIterator(astNodeCreateNameNode);
            generatorExpressionLoop.setIteratedObject(astNodeExpr);
            generatorExpressionLoop.setInPosition(i3);
            generatorExpressionLoop.setParens(i2, i4);
            return generatorExpressionLoop;
        } finally {
            popScope();
        }
    }

    private Comment getAndResetJsDoc() {
        Comment comment = this.currentJsDocComment;
        this.currentJsDocComment = null;
        return comment;
    }

    private static String getDirective(AstNode astNode) {
        if (!(astNode instanceof ExpressionStatement)) {
            return null;
        }
        AstNode expression = ((ExpressionStatement) astNode).getExpression();
        if (expression instanceof StringLiteral) {
            return ((StringLiteral) expression).getValue();
        }
        return null;
    }

    private AstNode getNextStatementAfterInlineComments(AstNode astNode) throws IOException {
        AstNode astNodeStatement = statement();
        if (162 != astNodeStatement.getType()) {
            return astNodeStatement;
        }
        AstNode astNodeStatement2 = statement();
        if (astNode != null) {
            astNode.setInlineComment(astNodeStatement);
        } else {
            astNodeStatement2.setInlineComment(astNodeStatement);
        }
        return astNodeStatement2;
    }

    private static int getNodeEnd(AstNode astNode) {
        return astNode.getPosition() + astNode.getLength();
    }

    private IfStatement ifStatement() throws IOException {
        int i;
        AstNode astNodeStatement;
        if (this.currentToken != 113) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i2 = iVar.y;
        int i3 = iVar.r;
        IfStatement ifStatement = new IfStatement(i2);
        b bVarCondition = condition();
        AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(ifStatement);
        if (matchToken(114, true)) {
            if (peekToken() == 162) {
                List<Comment> list = this.scannedComments;
                ifStatement.setElseKeyWordInlineComment(list.get(list.size() - 1));
                consumeToken();
            }
            i = this.ts.y - i2;
            astNodeStatement = statement();
        } else {
            i = -1;
            astNodeStatement = null;
        }
        ifStatement.setLength(getNodeEnd(astNodeStatement != null ? astNodeStatement : nextStatementAfterInlineComments) - i2);
        ifStatement.setCondition(bVarCondition.a);
        ifStatement.setParens(bVarCondition.b - i2, bVarCondition.c - i2);
        ifStatement.setThenPart(nextStatementAfterInlineComments);
        ifStatement.setElsePart(astNodeStatement);
        ifStatement.setElsePosition(i);
        ifStatement.setLineno(i3);
        return ifStatement;
    }

    private AstNode let(boolean z, int i) throws IOException {
        LetNode letNode = new LetNode(i);
        letNode.setLineno(this.ts.r);
        if (mustMatchToken(88, "msg.no.paren.after.let", true)) {
            letNode.setLp(this.ts.y - i);
        }
        pushScope(letNode);
        try {
            letNode.setVariables(variables(154, this.ts.y, z));
            if (mustMatchToken(89, "msg.no.paren.let", true)) {
                letNode.setRp(this.ts.y - i);
            }
            if (z && peekToken() == 86) {
                consumeToken();
                int i2 = this.ts.y;
                AstNode astNodeStatements = statements();
                mustMatchToken(87, "msg.no.curly.let", true);
                astNodeStatements.setLength(this.ts.z - i2);
                letNode.setLength(this.ts.z - i);
                letNode.setBody(astNodeStatements);
                letNode.setType(154);
            } else {
                AstNode astNodeExpr = expr();
                letNode.setLength(getNodeEnd(astNodeExpr) - i);
                letNode.setBody(astNodeExpr);
                if (z) {
                    ExpressionStatement expressionStatement = new ExpressionStatement(letNode, !insideFunction());
                    expressionStatement.setLineno(letNode.getLineno());
                    return expressionStatement;
                }
            }
            return letNode;
        } finally {
            popScope();
        }
    }

    private AstNode letStatement() throws IOException {
        if (this.currentToken != 154) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        AstNode astNodeLet = peekToken() == 88 ? let(true, i2) : variables(154, i2, true);
        astNodeLet.setLineno(i);
        return astNodeLet;
    }

    private int lineBeginningFor(int i) {
        char[] cArr = this.sourceChars;
        if (cArr == null) {
            return -1;
        }
        if (i <= 0) {
            return 0;
        }
        if (i >= cArr.length) {
            i = cArr.length - 1;
        }
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return 0;
            }
            if (ScriptRuntime.isJSLineTerminator(cArr[i2])) {
                return i;
            }
            i = i2;
        }
    }

    private ErrorNode makeErrorNode() {
        i iVar = this.ts;
        int i = iVar.y;
        ErrorNode errorNode = new ErrorNode(i, iVar.z - i);
        errorNode.setLineno(this.ts.r);
        return errorNode;
    }

    private LabeledStatement matchJumpLabelName() throws IOException {
        LabeledStatement labeledStatement = null;
        if (peekTokenOrEOL() == 39) {
            consumeToken();
            Map<String, LabeledStatement> map = this.labelSet;
            labeledStatement = map != null ? map.get(this.ts.s()) : null;
            if (labeledStatement == null) {
                reportError("msg.undef.label");
            }
        }
        return labeledStatement;
    }

    private boolean matchToken(int i, boolean z) throws IOException {
        int iPeekToken = peekToken();
        while (iPeekToken == 162 && z) {
            consumeToken();
            iPeekToken = peekToken();
        }
        if (iPeekToken != i) {
            return false;
        }
        consumeToken();
        return true;
    }

    private AstNode memberExpr(boolean z) throws IOException {
        AstNode astNodePrimaryExpr;
        int iPeekToken = peekToken();
        int i = this.ts.r;
        if (iPeekToken != 30) {
            astNodePrimaryExpr = primaryExpr();
        } else {
            consumeToken();
            int i2 = this.ts.y;
            NewExpression newExpression = new NewExpression(i2);
            AstNode astNodeMemberExpr = memberExpr(false);
            int nodeEnd = getNodeEnd(astNodeMemberExpr);
            newExpression.setTarget(astNodeMemberExpr);
            if (matchToken(88, true)) {
                int i3 = this.ts.y;
                List<AstNode> listArgumentList = argumentList();
                if (listArgumentList != null && listArgumentList.size() > 65536) {
                    reportError("msg.too.many.constructor.args");
                }
                i iVar = this.ts;
                int i4 = iVar.y;
                int i5 = iVar.z;
                if (listArgumentList != null) {
                    newExpression.setArguments(listArgumentList);
                }
                newExpression.setParens(i3 - i2, i4 - i2);
                nodeEnd = i5;
            }
            if (matchToken(86, true)) {
                ObjectLiteral objectLiteral = objectLiteral();
                nodeEnd = getNodeEnd(objectLiteral);
                newExpression.setInitializer(objectLiteral);
            }
            newExpression.setLength(nodeEnd - i2);
            astNodePrimaryExpr = newExpression;
        }
        astNodePrimaryExpr.setLineno(i);
        return memberExprTail(z, astNodePrimaryExpr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.mozilla.javascript.ast.AstNode] */
    /* JADX WARN: Type inference failed for: r11v1, types: [org.mozilla.javascript.ast.AstNode] */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [org.mozilla.javascript.Node, org.mozilla.javascript.ast.AstNode] */
    /* JADX WARN: Type inference failed for: r2v13, types: [org.mozilla.javascript.Node, org.mozilla.javascript.ast.AstNode, org.mozilla.javascript.ast.FunctionCall] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.mozilla.javascript.Node, org.mozilla.javascript.ast.ElementGet] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7, types: [org.mozilla.javascript.Node, org.mozilla.javascript.ast.InfixExpression, org.mozilla.javascript.ast.XmlDotQuery] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.mozilla.javascript.Parser] */
    private AstNode memberExprTail(boolean z, AstNode astNode) throws IOException {
        ?? r3;
        if (astNode == 0) {
            codeBug();
        }
        int position = astNode.getPosition();
        while (true) {
            int iPeekToken = peekToken();
            int i = -1;
            if (iPeekToken == 84) {
                consumeToken();
                i iVar = this.ts;
                int i2 = iVar.y;
                int i3 = iVar.r;
                AstNode astNodeExpr = expr();
                int nodeEnd = getNodeEnd(astNodeExpr);
                if (mustMatchToken(85, "msg.no.bracket.index", true)) {
                    i iVar2 = this.ts;
                    i = iVar2.y;
                    nodeEnd = iVar2.z;
                }
                ?? elementGet = new ElementGet(position, nodeEnd - position);
                elementGet.setTarget(astNode);
                elementGet.setElement(astNodeExpr);
                elementGet.setParens(i2, i);
                elementGet.setLineno(i3);
                r3 = elementGet;
            } else if (iPeekToken != 88) {
                if (iPeekToken == 109 || iPeekToken == 144) {
                    int i4 = this.ts.r;
                    astNode = propertyAccess(iPeekToken, astNode);
                    astNode.setLineno(i4);
                } else if (iPeekToken == 147) {
                    consumeToken();
                    i iVar3 = this.ts;
                    int i5 = iVar3.y;
                    int i6 = iVar3.r;
                    mustHaveXML();
                    setRequiresActivation();
                    AstNode astNodeExpr2 = expr();
                    int nodeEnd2 = getNodeEnd(astNodeExpr2);
                    if (mustMatchToken(89, "msg.no.paren", true)) {
                        i iVar4 = this.ts;
                        i = iVar4.y;
                        nodeEnd2 = iVar4.z;
                    }
                    ?? xmlDotQuery = new XmlDotQuery(position, nodeEnd2 - position);
                    xmlDotQuery.setLeft(astNode);
                    xmlDotQuery.setRight(astNodeExpr2);
                    xmlDotQuery.setOperatorPosition(i5);
                    xmlDotQuery.setRp(i - position);
                    xmlDotQuery.setLineno(i6);
                    r3 = xmlDotQuery;
                } else {
                    if (iPeekToken != 162) {
                        break;
                    }
                    int i7 = this.currentFlaggedToken;
                    peekUntilNonComment(iPeekToken);
                    int i8 = this.currentFlaggedToken;
                    if ((i8 & 65536) != 0) {
                        i7 = i8;
                    }
                    this.currentFlaggedToken = i7;
                }
            } else {
                if (!z) {
                    break;
                }
                int i9 = this.ts.r;
                consumeToken();
                checkCallRequiresActivation(astNode);
                ?? functionCall = new FunctionCall(position);
                functionCall.setTarget(astNode);
                functionCall.setLineno(i9);
                functionCall.setLp(this.ts.y - position);
                List<AstNode> listArgumentList = argumentList();
                if (listArgumentList != null && listArgumentList.size() > 65536) {
                    reportError("msg.too.many.function.args");
                }
                functionCall.setArguments(listArgumentList);
                functionCall.setRp(this.ts.y - position);
                functionCall.setLength(this.ts.z - position);
                astNode = functionCall;
            }
            astNode = r3;
        }
        return astNode;
    }

    private ObjectProperty methodDefinition(int i, AstNode astNode, int i2) throws IOException {
        FunctionNode functionNodeFunction = function(2);
        Name functionName = functionNodeFunction.getFunctionName();
        if (functionName != null && functionName.length() != 0) {
            reportError("msg.bad.prop");
        }
        ObjectProperty objectProperty = new ObjectProperty(i);
        if (i2 == 2) {
            objectProperty.setIsGetterMethod();
            functionNodeFunction.setFunctionIsGetterMethod();
        } else if (i2 == 4) {
            objectProperty.setIsSetterMethod();
            functionNodeFunction.setFunctionIsSetterMethod();
        } else if (i2 == 8) {
            objectProperty.setIsNormalMethod();
            functionNodeFunction.setFunctionIsNormalMethod();
        }
        int nodeEnd = getNodeEnd(functionNodeFunction);
        objectProperty.setLeft(astNode);
        objectProperty.setRight(functionNodeFunction);
        objectProperty.setLength(nodeEnd - i);
        return objectProperty;
    }

    private AstNode mulExpr() throws IOException {
        AstNode astNodeUnaryExpr = unaryExpr();
        while (true) {
            int iPeekToken = peekToken();
            int i = this.ts.y;
            switch (iPeekToken) {
                case 23:
                case 24:
                case 25:
                    consumeToken();
                    astNodeUnaryExpr = new InfixExpression(iPeekToken, astNodeUnaryExpr, unaryExpr(), i);
                    break;
                default:
                    return astNodeUnaryExpr;
            }
        }
    }

    private void mustHaveXML() {
        if (this.compilerEnv.isXmlAvailable()) {
            return;
        }
        reportError("msg.XML.not.available");
    }

    private boolean mustMatchToken(int i, String str, boolean z) throws IOException {
        i iVar = this.ts;
        int i2 = iVar.y;
        return mustMatchToken(i, str, i2, iVar.z - i2, z);
    }

    private AstNode name(int i, int i2) throws IOException {
        String strS = this.ts.s();
        i iVar = this.ts;
        int i3 = iVar.y;
        int i4 = iVar.r;
        if ((i & 131072) == 0 || peekToken() != 104) {
            saveNameTokenData(i3, strS, i4);
            return this.compilerEnv.isXmlAvailable() ? propertyName(-1, 0) : createNameNode(true, 39);
        }
        Label label = new Label(i3, this.ts.z - i3);
        label.setName(strS);
        label.setLineno(this.ts.r);
        return label;
    }

    private AstNode nameOrLabel() throws IOException {
        AstNode astNodeStatementHelper;
        if (this.currentToken != 39) {
            throw codeBug();
        }
        int i = this.ts.y;
        this.currentFlaggedToken |= 131072;
        AstNode astNodeExpr = expr();
        if (astNodeExpr.getType() != 131) {
            ExpressionStatement expressionStatement = new ExpressionStatement(astNodeExpr, !insideFunction());
            expressionStatement.lineno = astNodeExpr.lineno;
            return expressionStatement;
        }
        LabeledStatement labeledStatement = new LabeledStatement(i);
        recordLabel((Label) astNodeExpr, labeledStatement);
        labeledStatement.setLineno(this.ts.r);
        while (true) {
            if (peekToken() != 39) {
                astNodeStatementHelper = null;
                break;
            }
            this.currentFlaggedToken |= 131072;
            AstNode astNodeExpr2 = expr();
            if (astNodeExpr2.getType() != 131) {
                astNodeStatementHelper = new ExpressionStatement(astNodeExpr2, !insideFunction());
                autoInsertSemicolon(astNodeStatementHelper);
                break;
            }
            recordLabel((Label) astNodeExpr2, labeledStatement);
        }
        try {
            this.currentLabel = labeledStatement;
            if (astNodeStatementHelper == null) {
                astNodeStatementHelper = statementHelper();
                if (peekToken() == 162) {
                    int lineno = astNodeStatementHelper.getLineno();
                    List<Comment> list = this.scannedComments;
                    if (lineno == list.get(list.size() - 1).getLineno()) {
                        List<Comment> list2 = this.scannedComments;
                        astNodeStatementHelper.setInlineComment(list2.get(list2.size() - 1));
                        consumeToken();
                    }
                }
            }
            this.currentLabel = null;
            Iterator<Label> it = labeledStatement.getLabels().iterator();
            while (it.hasNext()) {
                this.labelSet.remove(it.next().getName());
            }
            labeledStatement.setLength(astNodeStatementHelper.getParent() == null ? getNodeEnd(astNodeStatementHelper) - i : getNodeEnd(astNodeStatementHelper));
            labeledStatement.setStatement(astNodeStatementHelper);
            return labeledStatement;
        } catch (Throwable th) {
            this.currentLabel = null;
            Iterator<Label> it2 = labeledStatement.getLabels().iterator();
            while (it2.hasNext()) {
                this.labelSet.remove(it2.next().getName());
            }
            throw th;
        }
    }

    private int nextToken() throws IOException {
        int iPeekToken = peekToken();
        consumeToken();
        return iPeekToken;
    }

    private static int nodeEnd(AstNode astNode) {
        return astNode.getPosition() + astNode.getLength();
    }

    private static final boolean nowAllSet(int i, int i2, int i3) {
        return (i & i3) != i3 && (i2 & i3) == i3;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00df  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:76:0x0114 A[LOOP:0: B:7:0x0024->B:76:0x0114, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x011b A[EDGE_INSN: B:83:0x011b->B:77:0x011b BREAK  A[LOOP:0: B:7:0x0024->B:76:0x0114], SYNTHETIC] */
    private ObjectLiteral objectLiteral() throws IOException {
        HashSet hashSet;
        HashSet hashSet2;
        boolean z;
        String strS;
        int i;
        i iVar = this.ts;
        int i2 = iVar.y;
        int i3 = iVar.r;
        ArrayList arrayList = new ArrayList();
        if (this.inUseStrictDirective) {
            hashSet = new HashSet();
            hashSet2 = new HashSet();
        } else {
            hashSet = null;
            hashSet2 = null;
        }
        Comment andResetJsDoc = getAndResetJsDoc();
        int i4 = -1;
        int i5 = -1;
        while (true) {
            int iPeekToken = peekToken();
            Comment andResetJsDoc2 = getAndResetJsDoc();
            if (iPeekToken == 162) {
                consumeToken();
                iPeekToken = peekUntilNonComment(iPeekToken);
            }
            if (iPeekToken != 87) {
                AstNode astNodeObjliteralProperty = objliteralProperty();
                if (astNodeObjliteralProperty != null) {
                    strS = this.ts.s();
                    int i6 = this.ts.y;
                    consumeToken();
                    int iPeekToken2 = peekToken();
                    if (iPeekToken2 == 90 || iPeekToken2 == 104 || iPeekToken2 == 87) {
                        astNodeObjliteralProperty.setJsDocNode(andResetJsDoc2);
                        arrayList.add(plainProperty(astNodeObjliteralProperty, iPeekToken));
                        i = 1;
                    } else {
                        if (iPeekToken2 == 88) {
                            i = 8;
                        } else if (astNodeObjliteralProperty.getType() != 39) {
                            i = 1;
                        } else if ("get".equals(strS)) {
                            i = 2;
                        } else if ("set".equals(strS)) {
                            i = 4;
                        } else {
                            i = 1;
                        }
                        if (i == 2 || i == 4) {
                            astNodeObjliteralProperty = objliteralProperty();
                            if (astNodeObjliteralProperty == null) {
                                reportError("msg.bad.prop");
                            }
                            consumeToken();
                        }
                        if (astNodeObjliteralProperty != null) {
                            strS = this.ts.s();
                            ObjectProperty objectPropertyMethodDefinition = methodDefinition(i6, astNodeObjliteralProperty, i);
                            astNodeObjliteralProperty.setJsDocNode(andResetJsDoc2);
                            arrayList.add(objectPropertyMethodDefinition);
                        }
                    }
                    if (this.inUseStrictDirective && strS != null) {
                        if (i == 1) {
                            if (hashSet.contains(strS) || hashSet2.contains(strS)) {
                                addError("msg.dup.obj.lit.prop.strict", strS);
                            }
                            hashSet.add(strS);
                            hashSet2.add(strS);
                        } else if (i != 2) {
                            if (hashSet.contains(strS)) {
                                addError("msg.dup.obj.lit.prop.strict", strS);
                            }
                            hashSet.add(strS);
                        } else if (i != 4) {
                            if (hashSet2.contains(strS)) {
                                addError("msg.dup.obj.lit.prop.strict", strS);
                            }
                            hashSet2.add(strS);
                        } else if (i == 8) {
                            if (hashSet.contains(strS)) {
                                addError("msg.dup.obj.lit.prop.strict", strS);
                            } else {
                                addError("msg.dup.obj.lit.prop.strict", strS);
                            }
                            hashSet.add(strS);
                            hashSet2.add(strS);
                        }
                    }
                    getAndResetJsDoc();
                    z = true;
                    if (matchToken(90, true)) {
                        break;
                    }
                    i5 = this.ts.z;
                    i4 = -1;
                } else {
                    reportError("msg.bad.prop");
                    i = 1;
                }
                strS = null;
                if (this.inUseStrictDirective) {
                    if (i == 1) {
                        if (hashSet.contains(strS)) {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        } else {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        }
                        hashSet.add(strS);
                        hashSet2.add(strS);
                    } else if (i != 2) {
                        if (hashSet.contains(strS)) {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        }
                        hashSet.add(strS);
                    } else if (i != 4) {
                        if (hashSet2.contains(strS)) {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        }
                        hashSet2.add(strS);
                    } else if (i == 8) {
                        if (hashSet.contains(strS)) {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        } else {
                            addError("msg.dup.obj.lit.prop.strict", strS);
                        }
                        hashSet.add(strS);
                        hashSet2.add(strS);
                    }
                }
                getAndResetJsDoc();
                z = true;
                if (matchToken(90, true)) {
                    break;
                    break;
                }
                i5 = this.ts.z;
                i4 = -1;
            } else {
                if (i5 != i4) {
                    warnTrailingComma(i2, arrayList, i5);
                }
                z = true;
                break;
            }
        }
        mustMatchToken(87, "msg.no.brace.prop", z);
        ObjectLiteral objectLiteral = new ObjectLiteral(i2, this.ts.z - i2);
        if (andResetJsDoc != null) {
            objectLiteral.setJsDocNode(andResetJsDoc);
        }
        objectLiteral.setElements(arrayList);
        objectLiteral.setLineno(i3);
        return objectLiteral;
    }

    private AstNode objliteralProperty() throws IOException {
        switch (peekToken()) {
            case 39:
                return createNameNode();
            case 40:
                i iVar = this.ts;
                return new NumberLiteral(iVar.y, iVar.s(), this.ts.p());
            case 41:
                return createStringLiteral();
            default:
                if (this.compilerEnv.isReservedKeywordAsIdentifier() && i.A(this.ts.s(), this.compilerEnv.getLanguageVersion(), this.inUseStrictDirective)) {
                    return createNameNode();
                }
                return null;
        }
    }

    private AstNode orExpr() throws IOException {
        AstNode astNodeAndExpr = andExpr();
        if (!matchToken(105, true)) {
            return astNodeAndExpr;
        }
        return new InfixExpression(105, astNodeAndExpr, orExpr(), this.ts.y);
    }

    private AstNode parenExpr() throws IOException {
        boolean z = this.inForInit;
        this.inForInit = false;
        try {
            Comment andResetJsDoc = getAndResetJsDoc();
            i iVar = this.ts;
            int i = iVar.r;
            int i2 = iVar.y;
            AstNode emptyExpression = peekToken() == 89 ? new EmptyExpression(i2) : expr();
            if (peekToken() == 120) {
                return generatorExpression(emptyExpression, i2);
            }
            mustMatchToken(89, "msg.no.paren", true);
            if (emptyExpression.getType() == 129 && peekToken() != 165) {
                reportError("msg.syntax");
                return makeErrorNode();
            }
            ParenthesizedExpression parenthesizedExpression = new ParenthesizedExpression(i2, this.ts.z - i2, emptyExpression);
            parenthesizedExpression.setLineno(i);
            if (andResetJsDoc == null) {
                andResetJsDoc = getAndResetJsDoc();
            }
            if (andResetJsDoc != null) {
                parenthesizedExpression.setJsDocNode(andResetJsDoc);
            }
            return parenthesizedExpression;
        } finally {
            this.inForInit = z;
        }
    }

    private AstNode parseFunctionBody(int i, FunctionNode functionNode) throws IOException {
        boolean z;
        Comment commentFunction;
        if (matchToken(86, true)) {
            z = false;
        } else if (this.compilerEnv.getLanguageVersion() >= 180 || i == 4) {
            z = true;
        } else {
            reportError("msg.no.brace.body");
            z = false;
        }
        boolean z2 = i == 4;
        this.nestingOfFunction++;
        int i2 = this.ts.y;
        Block block = new Block(i2);
        boolean z3 = this.inUseStrictDirective;
        this.inUseStrictDirective = false;
        block.setLineno(this.ts.r);
        try {
            if (z) {
                AstNode astNodeAssignExpr = assignExpr();
                ReturnStatement returnStatement = new ReturnStatement(astNodeAssignExpr.getPosition(), astNodeAssignExpr.getLength(), astNodeAssignExpr);
                Boolean bool = Boolean.TRUE;
                returnStatement.putProp(25, bool);
                block.putProp(25, bool);
                if (z2) {
                    returnStatement.putProp(27, bool);
                }
                block.addStatement(returnStatement);
            } else {
                boolean z4 = true;
                while (true) {
                    int iPeekToken = peekToken();
                    if (iPeekToken == -1 || iPeekToken == 0 || iPeekToken == 87) {
                        break;
                    }
                    if (iPeekToken == 110) {
                        consumeToken();
                        commentFunction = function(1);
                    } else if (iPeekToken != 162) {
                        commentFunction = statement();
                        if (z4) {
                            String directive = getDirective(commentFunction);
                            if (directive == null) {
                                z4 = false;
                            } else if (directive.equals("use strict")) {
                                this.inUseStrictDirective = true;
                                functionNode.setInStrictMode(true);
                                if (!z3) {
                                    setRequiresActivation();
                                }
                            }
                        }
                    } else {
                        consumeToken();
                        List<Comment> list = this.scannedComments;
                        commentFunction = list.get(list.size() - 1);
                    }
                    block.addStatement(commentFunction);
                }
            }
        } catch (ParserException unused) {
        } catch (Throwable th) {
            this.nestingOfFunction--;
            this.inUseStrictDirective = z3;
            throw th;
        }
        this.nestingOfFunction--;
        this.inUseStrictDirective = z3;
        int i3 = this.ts.z;
        getAndResetJsDoc();
        if (!z && mustMatchToken(87, "msg.no.brace.after.body", true)) {
            i3 = this.ts.z;
        }
        block.setLength(i3 - i2);
        return block;
    }

    private void parseFunctionParams(FunctionNode functionNode) throws IOException {
        if (matchToken(89, true)) {
            functionNode.setRp(this.ts.y - functionNode.getPosition());
            return;
        }
        HashSet hashSet = new HashSet();
        HashMap map = null;
        do {
            int iPeekToken = peekToken();
            if (iPeekToken == 84 || iPeekToken == 86) {
                AstNode astNodeDestructuringPrimaryExpr = destructuringPrimaryExpr();
                markDestructuring(astNodeDestructuringPrimaryExpr);
                functionNode.addParam(astNodeDestructuringPrimaryExpr);
                if (map == null) {
                    map = new HashMap();
                }
                String nextTempName = this.currentScriptOrFn.getNextTempName();
                defineSymbol(88, nextTempName, false);
                map.put(nextTempName, astNodeDestructuringPrimaryExpr);
            } else if (mustMatchToken(39, "msg.no.parm", true)) {
                AstNode astNodeCreateNameNode = createNameNode();
                Comment andResetJsDoc = getAndResetJsDoc();
                if (andResetJsDoc != null) {
                    astNodeCreateNameNode.setJsDocNode(andResetJsDoc);
                }
                functionNode.addParam(astNodeCreateNameNode);
                String strS = this.ts.s();
                defineSymbol(88, strS);
                if (this.inUseStrictDirective) {
                    if ("eval".equals(strS) || "arguments".equals(strS)) {
                        reportError("msg.bad.id.strict", strS);
                    }
                    if (hashSet.contains(strS)) {
                        addError("msg.dup.param.strict", strS);
                    }
                    hashSet.add(strS);
                }
            } else {
                functionNode.addParam(makeErrorNode());
            }
        } while (matchToken(90, true));
        if (map != null) {
            Node node = new Node(90);
            for (Map.Entry entry : map.entrySet()) {
                node.addChildToBack(createDestructuringAssignment(123, (Node) entry.getValue(), createName((String) entry.getKey())));
            }
            functionNode.putProp(23, node);
        }
        if (mustMatchToken(89, "msg.no.paren.after.parms", true)) {
            functionNode.setRp(this.ts.y - functionNode.getPosition());
        }
    }

    private int peekFlaggedToken() throws IOException {
        peekToken();
        return this.currentFlaggedToken;
    }

    private int peekToken() throws IOException {
        if (this.currentFlaggedToken != 0) {
            return this.currentToken;
        }
        int iN = this.ts.n();
        int iU = this.ts.u();
        boolean z = false;
        while (true) {
            if (iU != 1 && iU != 162) {
                break;
            }
            if (iU == 1) {
                iN++;
                iU = this.ts.u();
                z = true;
            } else {
                if (this.compilerEnv.isRecordingComments()) {
                    recordComment(iN, this.ts.g());
                    break;
                }
                iU = this.ts.u();
            }
        }
        this.currentToken = iU;
        this.currentFlaggedToken = iU | (z ? 65536 : 0);
        return iU;
    }

    private int peekTokenOrEOL() throws IOException {
        int iPeekToken = peekToken();
        if ((this.currentFlaggedToken & 65536) != 0) {
            return 1;
        }
        return iPeekToken;
    }

    private int peekUntilNonComment(int i) throws IOException {
        while (i == 162) {
            consumeToken();
            i = peekToken();
        }
        return i;
    }

    private ObjectProperty plainProperty(AstNode astNode, int i) throws IOException {
        int iPeekToken = peekToken();
        if ((iPeekToken != 90 && iPeekToken != 87) || i != 39 || this.compilerEnv.getLanguageVersion() < 180) {
            mustMatchToken(104, "msg.no.colon.prop", true);
            ObjectProperty objectProperty = new ObjectProperty();
            objectProperty.setOperatorPosition(this.ts.y);
            objectProperty.setLeftAndRight(astNode, assignExpr());
            return objectProperty;
        }
        if (!this.inDestructuringAssignment) {
            reportError("msg.bad.object.init");
        }
        Name name = new Name(astNode.getPosition(), astNode.getString());
        ObjectProperty objectProperty2 = new ObjectProperty();
        objectProperty2.putProp(26, Boolean.TRUE);
        objectProperty2.setLeftAndRight(astNode, name);
        return objectProperty2;
    }

    private AstNode primaryExpr() throws IOException {
        int iPeekFlaggedToken = peekFlaggedToken();
        int i = 65535 & iPeekFlaggedToken;
        if (i == -1) {
            consumeToken();
        } else {
            if (i != 0) {
                if (i != 24) {
                    if (i == 84) {
                        consumeToken();
                        return arrayLiteral();
                    }
                    if (i == 86) {
                        consumeToken();
                        return objectLiteral();
                    }
                    if (i == 88) {
                        consumeToken();
                        return parenExpr();
                    }
                    if (i != 101) {
                        if (i == 110) {
                            consumeToken();
                            return function(2);
                        }
                        if (i == 128) {
                            consumeToken();
                            reportError("msg.reserved.id", this.ts.s());
                        } else {
                            if (i == 148) {
                                consumeToken();
                                mustHaveXML();
                                return attributeAccess();
                            }
                            if (i == 154) {
                                consumeToken();
                                return let(false, this.ts.y);
                            }
                            switch (i) {
                                case 39:
                                    consumeToken();
                                    return name(iPeekFlaggedToken, i);
                                case 40:
                                    consumeToken();
                                    String strS = this.ts.s();
                                    if (this.inUseStrictDirective && this.ts.F()) {
                                        reportError("msg.no.old.octal.strict");
                                    }
                                    if (this.ts.C()) {
                                        strS = "0b" + strS;
                                    }
                                    if (this.ts.F()) {
                                        strS = "0" + strS;
                                    }
                                    if (this.ts.E()) {
                                        strS = "0o" + strS;
                                    }
                                    if (this.ts.D()) {
                                        strS = "0x" + strS;
                                    }
                                    i iVar = this.ts;
                                    return new NumberLiteral(iVar.y, strS, iVar.p());
                                case 41:
                                    consumeToken();
                                    return createStringLiteral();
                                case 42:
                                case 43:
                                case 44:
                                case 45:
                                    consumeToken();
                                    i iVar2 = this.ts;
                                    int i2 = iVar2.y;
                                    return new KeywordLiteral(i2, iVar2.z - i2, i);
                                default:
                                    consumeToken();
                                    reportError("msg.syntax");
                                    break;
                            }
                        }
                    }
                }
                consumeToken();
                this.ts.Q(i);
                i iVar3 = this.ts;
                int i3 = iVar3.y;
                RegExpLiteral regExpLiteral = new RegExpLiteral(i3, iVar3.z - i3);
                regExpLiteral.setValue(this.ts.s());
                regExpLiteral.setFlags(this.ts.L());
                return regExpLiteral;
            }
            consumeToken();
            reportError("msg.unexpected.eof");
        }
        consumeToken();
        return makeErrorNode();
    }

    private AstNode propertyAccess(int i, AstNode astNode) throws IOException {
        int i2;
        AstNode astNodePropertyName;
        String strKeywordToName;
        if (astNode == null) {
            codeBug();
        }
        i iVar = this.ts;
        int i3 = iVar.r;
        int i4 = iVar.y;
        consumeToken();
        if (i == 144) {
            mustHaveXML();
            i2 = 4;
        } else {
            i2 = 0;
        }
        if (!this.compilerEnv.isXmlAvailable()) {
            if (nextToken() != 39 && (!this.compilerEnv.isReservedKeywordAsIdentifier() || !i.A(this.ts.s(), this.compilerEnv.getLanguageVersion(), this.inUseStrictDirective))) {
                reportError("msg.no.name.after.dot");
            }
            PropertyGet propertyGet = new PropertyGet(astNode, createNameNode(true, 33), i4);
            propertyGet.setLineno(i3);
            return propertyGet;
        }
        int iNextToken = nextToken();
        if (iNextToken == 23) {
            i iVar2 = this.ts;
            saveNameTokenData(iVar2.y, "*", iVar2.r);
            astNodePropertyName = propertyName(-1, i2);
        } else if (iNextToken == 39) {
            astNodePropertyName = propertyName(-1, i2);
        } else if (iNextToken == 50) {
            i iVar3 = this.ts;
            saveNameTokenData(iVar3.y, "throw", iVar3.r);
            astNodePropertyName = propertyName(-1, i2);
        } else if (iNextToken == 128) {
            String strS = this.ts.s();
            i iVar4 = this.ts;
            saveNameTokenData(iVar4.y, strS, iVar4.r);
            astNodePropertyName = propertyName(-1, i2);
        } else if (iNextToken == 148) {
            astNodePropertyName = attributeAccess();
        } else {
            if (!this.compilerEnv.isReservedKeywordAsIdentifier() || (strKeywordToName = Token.keywordToName(iNextToken)) == null) {
                reportError("msg.no.name.after.dot");
                return makeErrorNode();
            }
            i iVar5 = this.ts;
            saveNameTokenData(iVar5.y, strKeywordToName, iVar5.r);
            astNodePropertyName = propertyName(-1, i2);
        }
        boolean z = astNodePropertyName instanceof XmlRef;
        InfixExpression xmlMemberGet = z ? new XmlMemberGet() : new PropertyGet();
        if (z && i == 109) {
            xmlMemberGet.setType(109);
        }
        int position = astNode.getPosition();
        xmlMemberGet.setPosition(position);
        xmlMemberGet.setLength(getNodeEnd(astNodePropertyName) - position);
        xmlMemberGet.setOperatorPosition(i4 - position);
        xmlMemberGet.setLineno(astNode.getLineno());
        xmlMemberGet.setLeft(astNode);
        xmlMemberGet.setRight(astNodePropertyName);
        return xmlMemberGet;
    }

    private AstNode propertyName(int i, int i2) throws IOException {
        int i3;
        Name nameCreateNameNode;
        int i4 = i != -1 ? i : this.ts.y;
        int i5 = this.ts.r;
        Name nameCreateNameNode2 = createNameNode(true, this.currentToken);
        if (matchToken(145, true)) {
            i3 = this.ts.y;
            int iNextToken = nextToken();
            if (iNextToken == 23) {
                i iVar = this.ts;
                saveNameTokenData(iVar.y, "*", iVar.r);
                nameCreateNameNode = createNameNode(false, -1);
            } else {
                if (iNextToken != 39) {
                    if (iNextToken == 84) {
                        return xmlElemRef(i, nameCreateNameNode2, i3);
                    }
                    reportError("msg.no.name.after.coloncolon");
                    return makeErrorNode();
                }
                nameCreateNameNode = createNameNode();
            }
        } else {
            i3 = -1;
            nameCreateNameNode2 = null;
            nameCreateNameNode = nameCreateNameNode2;
        }
        if (nameCreateNameNode2 == null && i2 == 0 && i == -1) {
            return nameCreateNameNode;
        }
        XmlPropRef xmlPropRef = new XmlPropRef(i4, getNodeEnd(nameCreateNameNode) - i4);
        xmlPropRef.setAtPos(i);
        xmlPropRef.setNamespace(nameCreateNameNode2);
        xmlPropRef.setColonPos(i3);
        xmlPropRef.setPropName(nameCreateNameNode);
        xmlPropRef.setLineno(i5);
        return xmlPropRef;
    }

    private void recordComment(int i, String str) {
        if (this.scannedComments == null) {
            this.scannedComments = new ArrayList();
        }
        i iVar = this.ts;
        Comment comment = new Comment(iVar.y, iVar.v(), this.ts.A, str);
        if (this.ts.A == Token.CommentType.JSDOC && this.compilerEnv.isRecordingLocalJsDocComments()) {
            i iVar2 = this.ts;
            Comment comment2 = new Comment(iVar2.y, iVar2.v(), this.ts.A, str);
            this.currentJsDocComment = comment2;
            comment2.setLineno(i);
        }
        comment.setLineno(i);
        this.scannedComments.add(comment);
    }

    private void recordLabel(Label label, LabeledStatement labeledStatement) throws IOException {
        if (peekToken() != 104) {
            codeBug();
        }
        consumeToken();
        String name = label.getName();
        Map<String, LabeledStatement> map = this.labelSet;
        if (map == null) {
            this.labelSet = new HashMap();
        } else {
            LabeledStatement labeledStatement2 = map.get(name);
            if (labeledStatement2 != null) {
                if (this.compilerEnv.isIdeMode()) {
                    Label labelByName = labeledStatement2.getLabelByName(name);
                    reportError("msg.dup.label", labelByName.getAbsolutePosition(), labelByName.getLength());
                }
                reportError("msg.dup.label", label.getPosition(), label.getLength());
            }
        }
        labeledStatement.addLabel(label);
        this.labelSet.put(name, labeledStatement);
    }

    private AstNode relExpr() throws IOException {
        AstNode astNodeShiftExpr = shiftExpr();
        while (true) {
            int iPeekToken = peekToken();
            int i = this.ts.y;
            if (iPeekToken != 52) {
                if (iPeekToken != 53) {
                    switch (iPeekToken) {
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                            break;
                        default:
                            break;
                    }
                } else {
                    continue;
                }
                consumeToken();
                astNodeShiftExpr = new InfixExpression(iPeekToken, astNodeShiftExpr, shiftExpr(), i);
            } else if (!this.inForInit) {
                consumeToken();
                astNodeShiftExpr = new InfixExpression(iPeekToken, astNodeShiftExpr, shiftExpr(), i);
            }
        }
        return astNodeShiftExpr;
    }

    private AstNode returnOrYield(int i, boolean z) throws IOException {
        boolean z2;
        int nodeEnd;
        AstNode astNodeExpr;
        AstNode yield;
        if (!insideFunction()) {
            reportError(i == 4 ? "msg.bad.return" : "msg.bad.yield");
        }
        consumeToken();
        i iVar = this.ts;
        int i2 = iVar.r;
        int i3 = iVar.y;
        int i4 = iVar.z;
        if (i == 73 && this.compilerEnv.getLanguageVersion() >= 200 && peekToken() == 23) {
            consumeToken();
            z2 = true;
        } else {
            z2 = false;
        }
        int iPeekTokenOrEOL = peekTokenOrEOL();
        if (iPeekTokenOrEOL == -1 || iPeekTokenOrEOL == 0 || iPeekTokenOrEOL == 1 || (iPeekTokenOrEOL == 73 ? this.compilerEnv.getLanguageVersion() < 200 : iPeekTokenOrEOL == 83 || iPeekTokenOrEOL == 85 || iPeekTokenOrEOL == 87 || iPeekTokenOrEOL == 89)) {
            nodeEnd = i4;
            astNodeExpr = null;
        } else {
            astNodeExpr = expr();
            nodeEnd = getNodeEnd(astNodeExpr);
        }
        int i5 = this.endFlags;
        if (i == 4) {
            this.endFlags = i5 | (astNodeExpr == null ? 2 : 4);
            int i6 = nodeEnd - i3;
            yield = new ReturnStatement(i3, i6, astNodeExpr);
            if (nowAllSet(i5, this.endFlags, 6)) {
                addStrictWarning("msg.return.inconsistent", "", i3, i6);
            }
        } else {
            if (!insideFunction()) {
                reportError("msg.bad.yield");
            }
            this.endFlags |= 8;
            yield = new Yield(i3, nodeEnd - i3, astNodeExpr, z2);
            setRequiresActivation();
            setIsGenerator();
            if (!z) {
                yield = new ExpressionStatement(yield);
            }
        }
        if (insideFunction() && nowAllSet(i5, this.endFlags, 12) && !((FunctionNode) this.currentScriptOrFn).isES6Generator()) {
            Name functionName = ((FunctionNode) this.currentScriptOrFn).getFunctionName();
            if (functionName == null || functionName.length() == 0) {
                addError("msg.anon.generator.returns", "");
            } else {
                addError("msg.generator.returns", functionName.getIdentifier());
            }
        }
        yield.setLineno(i2);
        return yield;
    }

    private void saveNameTokenData(int i, String str, int i2) {
        this.prevNameTokenStart = i;
        this.prevNameTokenString = str;
        this.prevNameTokenLineno = i2;
    }

    private AstNode shiftExpr() throws IOException {
        AstNode astNodeAddExpr = addExpr();
        while (true) {
            int iPeekToken = peekToken();
            int i = this.ts.y;
            switch (iPeekToken) {
                case 18:
                case 19:
                case 20:
                    consumeToken();
                    astNodeAddExpr = new InfixExpression(iPeekToken, astNodeAddExpr, addExpr(), i);
                    break;
                default:
                    return astNodeAddExpr;
            }
        }
    }

    private AstNode statement() throws IOException {
        int iPeekTokenOrEOL;
        int i = this.ts.y;
        try {
            AstNode astNodeStatementHelper = statementHelper();
            if (astNodeStatementHelper != null) {
                if (this.compilerEnv.isStrictMode() && !astNodeStatementHelper.hasSideEffects()) {
                    int position = astNodeStatementHelper.getPosition();
                    int iMax = Math.max(position, lineBeginningFor(position));
                    addStrictWarning(astNodeStatementHelper instanceof EmptyStatement ? "msg.extra.trailing.semi" : "msg.no.side.effects", "", iMax, nodeEnd(astNodeStatementHelper) - iMax);
                }
                if (peekToken() == 162) {
                    int lineno = astNodeStatementHelper.getLineno();
                    List<Comment> list = this.scannedComments;
                    if (lineno == list.get(list.size() - 1).getLineno()) {
                        List<Comment> list2 = this.scannedComments;
                        astNodeStatementHelper.setInlineComment(list2.get(list2.size() - 1));
                        consumeToken();
                    }
                }
                return astNodeStatementHelper;
            }
        } catch (ParserException unused) {
        }
        do {
            iPeekTokenOrEOL = peekTokenOrEOL();
            consumeToken();
            if (iPeekTokenOrEOL == -1 || iPeekTokenOrEOL == 0 || iPeekTokenOrEOL == 1) {
                break;
            }
        } while (iPeekTokenOrEOL != 83);
        return new EmptyStatement(i, this.ts.y - i);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:80:0x0125  */
    private AstNode statementHelper() throws IOException {
        AstNode astNodeReturnOrYield;
        LabeledStatement labeledStatement = this.currentLabel;
        if (labeledStatement != null && labeledStatement.getStatement() != null) {
            this.currentLabel = null;
        }
        int iPeekToken = peekToken();
        i iVar = this.ts;
        int i = iVar.y;
        if (iPeekToken == -1) {
            consumeToken();
            return makeErrorNode();
        }
        if (iPeekToken == 4) {
            astNodeReturnOrYield = returnOrYield(iPeekToken, false);
        } else if (iPeekToken == 39) {
            astNodeReturnOrYield = nameOrLabel();
            if (!(astNodeReturnOrYield instanceof ExpressionStatement)) {
                return astNodeReturnOrYield;
            }
        } else if (iPeekToken == 50) {
            astNodeReturnOrYield = throwStatement();
        } else if (iPeekToken == 73) {
            astNodeReturnOrYield = returnOrYield(iPeekToken, false);
        } else {
            if (iPeekToken == 86) {
                return block();
            }
            if (iPeekToken == 110) {
                consumeToken();
                return function(3);
            }
            if (iPeekToken == 113) {
                return ifStatement();
            }
            if (iPeekToken == 115) {
                return switchStatement();
            }
            if (iPeekToken == 82) {
                return tryStatement();
            }
            if (iPeekToken == 83) {
                consumeToken();
                int i2 = this.ts.y;
                EmptyStatement emptyStatement = new EmptyStatement(i2, this.ts.z - i2);
                emptyStatement.setLineno(this.ts.r);
                return emptyStatement;
            }
            if (iPeekToken == 154) {
                astNodeReturnOrYield = letStatement();
                if (!(astNodeReturnOrYield instanceof VariableDeclaration) || peekToken() != 83) {
                    return astNodeReturnOrYield;
                }
            } else if (iPeekToken == 155) {
                consumeToken();
                i iVar2 = this.ts;
                int i3 = iVar2.r;
                VariableDeclaration variableDeclarationVariables = variables(this.currentToken, iVar2.y, true);
                variableDeclarationVariables.setLineno(i3);
                astNodeReturnOrYield = variableDeclarationVariables;
            } else if (iPeekToken == 161) {
                consumeToken();
                i iVar3 = this.ts;
                int i4 = iVar3.y;
                astNodeReturnOrYield = new KeywordLiteral(i4, iVar3.z - i4, iPeekToken);
                astNodeReturnOrYield.setLineno(this.ts.r);
            } else {
                if (iPeekToken == 162) {
                    List<Comment> list = this.scannedComments;
                    return list.get(list.size() - 1);
                }
                switch (iPeekToken) {
                    case 117:
                        astNodeReturnOrYield = defaultXmlNamespace();
                        break;
                    case 118:
                        return whileLoop();
                    case 119:
                        return doLoop();
                    case 120:
                        return forLoop();
                    case 121:
                        astNodeReturnOrYield = breakStatement();
                        break;
                    case 122:
                        astNodeReturnOrYield = continueStatement();
                        break;
                    case 123:
                        consumeToken();
                        i iVar4 = this.ts;
                        int i5 = iVar4.r;
                        VariableDeclaration variableDeclarationVariables2 = variables(this.currentToken, iVar4.y, true);
                        variableDeclarationVariables2.setLineno(i5);
                        astNodeReturnOrYield = variableDeclarationVariables2;
                        break;
                    case 124:
                        if (this.inUseStrictDirective) {
                            reportError("msg.no.with.strict");
                        }
                        return withStatement();
                    default:
                        int i6 = iVar.r;
                        astNodeReturnOrYield = new ExpressionStatement(expr(), true ^ insideFunction());
                        astNodeReturnOrYield.setLineno(i6);
                        break;
                }
            }
        }
        autoInsertSemicolon(astNodeReturnOrYield);
        return astNodeReturnOrYield;
    }

    private AstNode statements(AstNode astNode) throws IOException {
        if (this.currentToken != 86 && !this.compilerEnv.isIdeMode()) {
            codeBug();
        }
        int i = this.ts.y;
        if (astNode == null) {
            astNode = new Block(i);
        }
        astNode.setLineno(this.ts.r);
        while (true) {
            int iPeekToken = peekToken();
            if (iPeekToken <= 0 || iPeekToken == 87) {
                break;
            }
            astNode.addChild(statement());
        }
        astNode.setLength(this.ts.y - i);
        return astNode;
    }

    private SwitchStatement switchStatement() throws IOException {
        boolean z;
        AstNode astNode;
        if (this.currentToken != 115) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.y;
        SwitchStatement switchStatement = new SwitchStatement(i);
        if (mustMatchToken(88, "msg.no.paren.switch", true)) {
            switchStatement.setLp(this.ts.y - i);
        }
        switchStatement.setLineno(this.ts.r);
        switchStatement.setExpression(expr());
        enterSwitch(switchStatement);
        try {
            if (mustMatchToken(89, "msg.no.paren.after.switch", true)) {
                switchStatement.setRp(this.ts.y - i);
            }
            mustMatchToken(86, "msg.no.brace.switch", true);
            boolean z2 = false;
            while (true) {
                int iNextToken = nextToken();
                i iVar = this.ts;
                int i2 = iVar.y;
                int i3 = iVar.r;
                if (iNextToken == 87) {
                    switchStatement.setLength(iVar.z - i);
                    break;
                }
                if (iNextToken != 162) {
                    if (iNextToken == 116) {
                        AstNode astNodeExpr = expr();
                        mustMatchToken(104, "msg.no.colon.case", true);
                        z = z2;
                        astNode = astNodeExpr;
                    } else {
                        if (iNextToken != 117) {
                            reportError("msg.bad.switch");
                            break;
                        }
                        if (z2) {
                            reportError("msg.double.switch.default");
                        }
                        mustMatchToken(104, "msg.no.colon.case", true);
                        astNode = null;
                        z = true;
                    }
                    SwitchCase switchCase = new SwitchCase(i2);
                    switchCase.setExpression(astNode);
                    switchCase.setLength(this.ts.z - i);
                    switchCase.setLineno(i3);
                    while (true) {
                        int iPeekToken = peekToken();
                        if (iPeekToken == 87 || iPeekToken == 116 || iPeekToken == 117 || iPeekToken == 0) {
                            break;
                        }
                        if (iPeekToken == 162) {
                            List<Comment> list = this.scannedComments;
                            Comment comment = list.get(list.size() - 1);
                            if (switchCase.getInlineComment() == null && comment.getLineno() == switchCase.getLineno()) {
                                switchCase.setInlineComment(comment);
                            } else {
                                switchCase.addStatement(comment);
                            }
                            consumeToken();
                        } else {
                            switchCase.addStatement(statement());
                        }
                    }
                    switchStatement.addCase(switchCase);
                    z2 = z;
                } else {
                    List<Comment> list2 = this.scannedComments;
                    switchStatement.addChild(list2.get(list2.size() - 1));
                }
            }
            exitSwitch();
            return switchStatement;
        } catch (Throwable th) {
            exitSwitch();
            throw th;
        }
    }

    private ThrowStatement throwStatement() throws IOException {
        if (this.currentToken != 50) {
            codeBug();
        }
        consumeToken();
        i iVar = this.ts;
        int i = iVar.y;
        int i2 = iVar.r;
        if (peekTokenOrEOL() == 1) {
            reportError("msg.bad.throw.eol");
        }
        ThrowStatement throwStatement = new ThrowStatement(i, expr());
        throwStatement.setLineno(i2);
        return throwStatement;
    }

    private TryStatement tryStatement() throws IOException {
        Comment comment;
        int i;
        ArrayList arrayList;
        int i2;
        AstNode astNodeStatement;
        boolean z;
        int i3;
        AstNode astNodeExpr;
        if (this.currentToken != 82) {
            codeBug();
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        i iVar = this.ts;
        int i4 = iVar.y;
        int i5 = iVar.r;
        TryStatement tryStatement = new TryStatement(i4);
        int iPeekToken = peekToken();
        if (iPeekToken == 162) {
            List<Comment> list = this.scannedComments;
            tryStatement.setInlineComment(list.get(list.size() - 1));
            consumeToken();
            iPeekToken = peekToken();
        }
        if (iPeekToken != 86) {
            reportError("msg.no.brace.try");
        }
        AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(tryStatement);
        int nodeEnd = getNodeEnd(nextStatementAfterInlineComments);
        int iPeekToken2 = peekToken();
        if (iPeekToken2 == 125) {
            boolean z2 = false;
            arrayList = null;
            for (int i6 = 125; matchToken(i6, true); i6 = 125) {
                int i7 = this.ts.r;
                if (z2) {
                    reportError("msg.catch.unreachable");
                }
                int i8 = this.ts.y;
                int i9 = mustMatchToken(88, "msg.no.paren.catch", true) ? this.ts.y : -1;
                mustMatchToken(39, "msg.bad.catchcond", true);
                Name nameCreateNameNode = createNameNode();
                Comment andResetJsDoc2 = getAndResetJsDoc();
                if (andResetJsDoc2 != null) {
                    nameCreateNameNode.setJsDocNode(andResetJsDoc2);
                }
                String identifier = nameCreateNameNode.getIdentifier();
                if (this.inUseStrictDirective && ("eval".equals(identifier) || "arguments".equals(identifier))) {
                    reportError("msg.bad.id.strict", identifier);
                }
                if (matchToken(113, true)) {
                    i3 = this.ts.y;
                    astNodeExpr = expr();
                    z = z2;
                } else {
                    z = true;
                    i3 = -1;
                    astNodeExpr = null;
                }
                int i10 = mustMatchToken(89, "msg.bad.catchcond", true) ? this.ts.y : -1;
                Comment comment2 = andResetJsDoc;
                mustMatchToken(86, "msg.no.brace.catchblock", true);
                Block block = (Block) statements();
                int nodeEnd2 = getNodeEnd(block);
                CatchClause catchClause = new CatchClause(i8);
                catchClause.setVarName(nameCreateNameNode);
                catchClause.setCatchCondition(astNodeExpr);
                catchClause.setBody(block);
                if (i3 != -1) {
                    catchClause.setIfPosition(i3 - i8);
                }
                catchClause.setParens(i9, i10);
                catchClause.setLineno(i7);
                nodeEnd = mustMatchToken(87, "msg.no.brace.after.body", true) ? this.ts.z : nodeEnd2;
                catchClause.setLength(nodeEnd - i8);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(catchClause);
                z2 = z;
                andResetJsDoc = comment2;
            }
            comment = andResetJsDoc;
            i = 126;
        } else {
            comment = andResetJsDoc;
            i = 126;
            if (iPeekToken2 != 126) {
                mustMatchToken(126, "msg.try.no.catchfinally", true);
            }
            arrayList = null;
        }
        if (matchToken(i, true)) {
            i2 = this.ts.y;
            astNodeStatement = statement();
            nodeEnd = getNodeEnd(astNodeStatement);
        } else {
            i2 = -1;
            astNodeStatement = null;
        }
        tryStatement.setLength(nodeEnd - i4);
        tryStatement.setTryBlock(nextStatementAfterInlineComments);
        tryStatement.setCatchClauses(arrayList);
        tryStatement.setFinallyBlock(astNodeStatement);
        if (i2 != -1) {
            tryStatement.setFinallyPosition(i2 - i4);
        }
        tryStatement.setLineno(i5);
        if (comment != null) {
            tryStatement.setJsDocNode(comment);
        }
        return tryStatement;
    }

    private AstNode unaryExpr() throws IOException {
        int iPeekToken = peekToken();
        if (iPeekToken == 162) {
            consumeToken();
            iPeekToken = peekUntilNonComment(iPeekToken);
        }
        int i = this.ts.r;
        if (iPeekToken == -1) {
            consumeToken();
            return makeErrorNode();
        }
        if (iPeekToken != 14) {
            if (iPeekToken != 127) {
                if (iPeekToken == 21) {
                    consumeToken();
                    UnaryExpression unaryExpression = new UnaryExpression(28, this.ts.y, unaryExpr());
                    unaryExpression.setLineno(i);
                    return unaryExpression;
                }
                if (iPeekToken == 22) {
                    consumeToken();
                    UnaryExpression unaryExpression2 = new UnaryExpression(29, this.ts.y, unaryExpr());
                    unaryExpression2.setLineno(i);
                    return unaryExpression2;
                }
                if (iPeekToken != 26 && iPeekToken != 27) {
                    if (iPeekToken == 31) {
                        consumeToken();
                        UnaryExpression unaryExpression3 = new UnaryExpression(iPeekToken, this.ts.y, unaryExpr());
                        unaryExpression3.setLineno(i);
                        return unaryExpression3;
                    }
                    if (iPeekToken != 32) {
                        if (iPeekToken == 107 || iPeekToken == 108) {
                            consumeToken();
                            UnaryExpression unaryExpression4 = new UnaryExpression(iPeekToken, this.ts.y, memberExpr(true));
                            unaryExpression4.setLineno(i);
                            checkBadIncDec(unaryExpression4);
                            return unaryExpression4;
                        }
                    }
                }
            }
            consumeToken();
            UnaryExpression unaryExpression5 = new UnaryExpression(iPeekToken, this.ts.y, unaryExpr());
            unaryExpression5.setLineno(i);
            return unaryExpression5;
        }
        if (this.compilerEnv.isXmlAvailable()) {
            consumeToken();
            return memberExprTail(true, xmlInitializer());
        }
        AstNode astNodeMemberExpr = memberExpr(true);
        int iPeekTokenOrEOL = peekTokenOrEOL();
        if (iPeekTokenOrEOL != 107 && iPeekTokenOrEOL != 108) {
            return astNodeMemberExpr;
        }
        consumeToken();
        UnaryExpression unaryExpression6 = new UnaryExpression(iPeekTokenOrEOL, this.ts.y, astNodeMemberExpr, true);
        unaryExpression6.setLineno(i);
        checkBadIncDec(unaryExpression6);
        return unaryExpression6;
    }

    private VariableDeclaration variables(int i, int i2, boolean z) throws IOException {
        AstNode astNodeDestructuringPrimaryExpr;
        int nodeEnd;
        Name name;
        VariableDeclaration variableDeclaration = new VariableDeclaration(i2);
        variableDeclaration.setType(i);
        variableDeclaration.setLineno(this.ts.r);
        Comment andResetJsDoc = getAndResetJsDoc();
        if (andResetJsDoc != null) {
            variableDeclaration.setJsDocNode(andResetJsDoc);
        }
        do {
            int iPeekToken = peekToken();
            i iVar = this.ts;
            int i3 = iVar.y;
            int i4 = iVar.z;
            AstNode astNodeAssignExpr = null;
            if (iPeekToken == 84 || iPeekToken == 86) {
                astNodeDestructuringPrimaryExpr = destructuringPrimaryExpr();
                int nodeEnd2 = getNodeEnd(astNodeDestructuringPrimaryExpr);
                if (!(astNodeDestructuringPrimaryExpr instanceof DestructuringForm)) {
                    reportError("msg.bad.assign.left", i3, nodeEnd2 - i3);
                }
                markDestructuring(astNodeDestructuringPrimaryExpr);
                nodeEnd = nodeEnd2;
                name = null;
            } else {
                mustMatchToken(39, "msg.bad.var", true);
                Name nameCreateNameNode = createNameNode();
                nameCreateNameNode.setLineno(this.ts.n());
                if (this.inUseStrictDirective) {
                    String strS = this.ts.s();
                    if ("eval".equals(strS) || "arguments".equals(this.ts.s())) {
                        reportError("msg.bad.id.strict", strS);
                    }
                }
                defineSymbol(i, this.ts.s(), this.inForInit);
                nodeEnd = i4;
                name = nameCreateNameNode;
                astNodeDestructuringPrimaryExpr = null;
            }
            int i5 = this.ts.r;
            Comment andResetJsDoc2 = getAndResetJsDoc();
            if (matchToken(91, true)) {
                astNodeAssignExpr = assignExpr();
                nodeEnd = getNodeEnd(astNodeAssignExpr);
            }
            VariableInitializer variableInitializer = new VariableInitializer(i3, nodeEnd - i3);
            if (astNodeDestructuringPrimaryExpr != null) {
                if (astNodeAssignExpr == null && !this.inForInit) {
                    reportError("msg.destruct.assign.no.init");
                }
                variableInitializer.setTarget(astNodeDestructuringPrimaryExpr);
            } else {
                variableInitializer.setTarget(name);
            }
            variableInitializer.setInitializer(astNodeAssignExpr);
            variableInitializer.setType(i);
            variableInitializer.setJsDocNode(andResetJsDoc2);
            variableInitializer.setLineno(i5);
            variableDeclaration.addVariable(variableInitializer);
        } while (matchToken(90, true));
        variableDeclaration.setLength(nodeEnd - i2);
        variableDeclaration.setIsStatement(z);
        return variableDeclaration;
    }

    private void warnMissingSemi(int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            int[] iArr = new int[2];
            String strM = this.ts.m(i2, iArr);
            if (this.compilerEnv.isIdeMode()) {
                i = Math.max(i, i2 - iArr[1]);
            }
            int i3 = i;
            if (strM != null) {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3, iArr[0], strM, iArr[1]);
            } else {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3);
            }
        }
    }

    private void warnTrailingComma(int i, List<?> list, int i2) {
        if (this.compilerEnv.getWarnTrailingComma()) {
            if (!list.isEmpty()) {
                i = ((AstNode) list.get(0)).getPosition();
            }
            int iMax = Math.max(i, lineBeginningFor(i2));
            addWarning("msg.extra.trailing.comma", iMax, i2 - iMax);
        }
    }

    private WhileLoop whileLoop() throws IOException {
        if (this.currentToken != 118) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.y;
        WhileLoop whileLoop = new WhileLoop(i);
        whileLoop.setLineno(this.ts.r);
        enterLoop(whileLoop);
        try {
            b bVarCondition = condition();
            whileLoop.setCondition(bVarCondition.a);
            whileLoop.setParens(bVarCondition.b - i, bVarCondition.c - i);
            AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(whileLoop);
            whileLoop.setLength(getNodeEnd(nextStatementAfterInlineComments) - i);
            whileLoop.setBody(nextStatementAfterInlineComments);
            return whileLoop;
        } finally {
            exitLoop();
        }
    }

    private WithStatement withStatement() throws IOException {
        if (this.currentToken != 124) {
            codeBug();
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        i iVar = this.ts;
        int i = iVar.r;
        int i2 = iVar.y;
        int i3 = mustMatchToken(88, "msg.no.paren.with", true) ? this.ts.y : -1;
        AstNode astNodeExpr = expr();
        int i4 = mustMatchToken(89, "msg.no.paren.after.with", true) ? this.ts.y : -1;
        WithStatement withStatement = new WithStatement(i2);
        AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(withStatement);
        withStatement.setLength(getNodeEnd(nextStatementAfterInlineComments) - i2);
        withStatement.setJsDocNode(andResetJsDoc);
        withStatement.setExpression(astNodeExpr);
        withStatement.setStatement(nextStatementAfterInlineComments);
        withStatement.setParens(i3, i4);
        withStatement.setLineno(i);
        return withStatement;
    }

    private XmlElemRef xmlElemRef(int i, Name name, int i2) throws IOException {
        int i3 = this.ts.y;
        int i4 = -1;
        int i5 = i != -1 ? i : i3;
        AstNode astNodeExpr = expr();
        int nodeEnd = getNodeEnd(astNodeExpr);
        if (mustMatchToken(85, "msg.no.bracket.index", true)) {
            i iVar = this.ts;
            i4 = iVar.y;
            nodeEnd = iVar.z;
        }
        XmlElemRef xmlElemRef = new XmlElemRef(i5, nodeEnd - i5);
        xmlElemRef.setNamespace(name);
        xmlElemRef.setColonPos(i2);
        xmlElemRef.setAtPos(i);
        xmlElemRef.setExpression(astNodeExpr);
        xmlElemRef.setBrackets(i3, i4);
        return xmlElemRef;
    }

    private AstNode xmlInitializer() throws IOException {
        if (this.currentToken != 14) {
            codeBug();
        }
        i iVar = this.ts;
        int i = iVar.y;
        int iK = iVar.k();
        if (iK != 146 && iK != 149) {
            reportError("msg.syntax");
            return makeErrorNode();
        }
        XmlLiteral xmlLiteral = new XmlLiteral(i);
        xmlLiteral.setLineno(this.ts.r);
        while (iK == 146) {
            i iVar2 = this.ts;
            xmlLiteral.addFragment(new XmlString(iVar2.y, iVar2.s()));
            mustMatchToken(86, "msg.syntax", true);
            int i2 = this.ts.y;
            AstNode emptyExpression = peekToken() == 87 ? new EmptyExpression(i2, this.ts.z - i2) : expr();
            mustMatchToken(87, "msg.syntax", true);
            XmlExpression xmlExpression = new XmlExpression(i2, emptyExpression);
            xmlExpression.setIsXmlAttribute(this.ts.G());
            xmlExpression.setLength(this.ts.z - i2);
            xmlLiteral.addFragment(xmlExpression);
            iK = this.ts.o();
        }
        if (iK != 149) {
            reportError("msg.syntax");
            return makeErrorNode();
        }
        i iVar3 = this.ts;
        xmlLiteral.addFragment(new XmlString(iVar3.y, iVar3.s()));
        return xmlLiteral;
    }

    public void addError(String str) {
        i iVar = this.ts;
        int i = iVar.y;
        addError(str, i, iVar.z - i);
    }

    public void addStrictWarning(String str, String str2) {
        int i;
        int i2;
        i iVar = this.ts;
        if (iVar != null) {
            i = iVar.y;
            i2 = iVar.z - i;
        } else {
            i = -1;
            i2 = -1;
        }
        addStrictWarning(str, str2, i, i2);
    }

    public void addWarning(String str, String str2) {
        int i;
        int i2;
        i iVar = this.ts;
        if (iVar != null) {
            i = iVar.y;
            i2 = iVar.z - i;
        } else {
            i = -1;
            i2 = -1;
        }
        addWarning(str, str2, i, i2);
    }

    public void checkActivationName(String str, int i) {
        if (insideFunction()) {
            if ((!"arguments".equals(str) || ((FunctionNode) this.currentScriptOrFn).getFunctionType() == 4) && ((this.compilerEnv.getActivationNames() == null || !this.compilerEnv.getActivationNames().contains(str)) && !(SessionDescription.ATTR_LENGTH.equals(str) && i == 33 && this.compilerEnv.getLanguageVersion() == 120))) {
                return;
            }
            setRequiresActivation();
        }
    }

    public void checkMutableReference(Node node) {
        if ((node.getIntProp(16, 0) & 4) != 0) {
            reportError("msg.bad.assign.left");
        }
    }

    public Node createDestructuringAssignment(int i, Node node, Node node2) {
        String nextTempName = this.currentScriptOrFn.getNextTempName();
        Node nodeDestructuringAssignmentHelper = destructuringAssignmentHelper(i, node, node2, nextTempName);
        nodeDestructuringAssignmentHelper.getLastChild().addChildToBack(createName(nextTempName));
        return nodeDestructuringAssignmentHelper;
    }

    public Node createName(String str) {
        checkActivationName(str, 39);
        return Node.newString(39, str);
    }

    public Node createNumber(double d) {
        return Node.newNumber(d);
    }

    public Scope createScopeNode(int i, int i2) {
        Scope scope = new Scope();
        scope.setType(i);
        scope.setLineno(i2);
        return scope;
    }

    public void defineSymbol(int i, String str) {
        defineSymbol(i, str, false);
    }

    public boolean destructuringArray(ArrayLiteral arrayLiteral, int i, String str, Node node, List<String> list) {
        int i2 = i == 155 ? 156 : 8;
        int i3 = 0;
        boolean z = true;
        for (AstNode astNode : arrayLiteral.getElements()) {
            if (astNode.getType() == 129) {
                i3++;
            } else {
                Node node2 = new Node(36, createName(str), createNumber(i3));
                if (astNode.getType() == 39) {
                    String string = astNode.getString();
                    node.addChildToBack(new Node(i2, createName(49, string, null), node2));
                    if (i != -1) {
                        defineSymbol(i, string, true);
                        list.add(string);
                    }
                } else {
                    node.addChildToBack(destructuringAssignmentHelper(i, astNode, node2, this.currentScriptOrFn.getNextTempName()));
                }
                i3++;
                z = false;
            }
        }
        return z;
    }

    public Node destructuringAssignmentHelper(int i, Node node, Node node2, String str) {
        Scope scopeCreateScopeNode = createScopeNode(159, node.getLineno());
        scopeCreateScopeNode.addChildToFront(new Node(154, createName(39, str, node2)));
        try {
            pushScope(scopeCreateScopeNode);
            boolean zDestructuringArray = true;
            defineSymbol(154, str, true);
            popScope();
            Node node3 = new Node(90);
            scopeCreateScopeNode.addChildToBack(node3);
            List<String> arrayList = new ArrayList<>();
            int type = node.getType();
            if (type == 33 || type == 36) {
                if (i == 123 || i == 154 || i == 155) {
                    reportError("msg.bad.assign.left");
                }
                node3.addChildToBack(simpleAssignment(node, createName(str)));
            } else if (type == 66) {
                zDestructuringArray = destructuringArray((ArrayLiteral) node, i, str, node3, arrayList);
            } else if (type != 67) {
                reportError("msg.bad.assign.left");
            } else {
                zDestructuringArray = destructuringObject((ObjectLiteral) node, i, str, node3, arrayList);
            }
            if (zDestructuringArray) {
                node3.addChildToBack(createNumber(0.0d));
            }
            scopeCreateScopeNode.putProp(22, arrayList);
            return scopeCreateScopeNode;
        } catch (Throwable th) {
            popScope();
            throw th;
        }
    }

    public boolean destructuringObject(ObjectLiteral objectLiteral, int i, String str, Node node, List<String> list) {
        Node node2;
        int i2 = i == 155 ? 156 : 8;
        boolean z = true;
        for (ObjectProperty objectProperty : objectLiteral.getElements()) {
            i iVar = this.ts;
            int i3 = iVar != null ? iVar.r : 0;
            AstNode left = objectProperty.getLeft();
            if (left instanceof Name) {
                node2 = new Node(33, createName(str), Node.newString(((Name) left).getIdentifier()));
            } else if (left instanceof StringLiteral) {
                node2 = new Node(33, createName(str), Node.newString(((StringLiteral) left).getValue()));
            } else {
                if (!(left instanceof NumberLiteral)) {
                    throw codeBug();
                }
                node2 = new Node(36, createName(str), createNumber((int) ((NumberLiteral) left).getNumber()));
            }
            node2.setLineno(i3);
            AstNode right = objectProperty.getRight();
            if (right.getType() == 39) {
                String identifier = ((Name) right).getIdentifier();
                node.addChildToBack(new Node(i2, createName(49, identifier, null), node2));
                if (i != -1) {
                    defineSymbol(i, identifier, true);
                    list.add(identifier);
                }
            } else {
                node.addChildToBack(destructuringAssignmentHelper(i, right, node2, this.currentScriptOrFn.getNextTempName()));
            }
            z = false;
        }
        return z;
    }

    public boolean eof() {
        return this.ts.e();
    }

    public boolean inUseStrictDirective() {
        return this.inUseStrictDirective;
    }

    public boolean insideFunction() {
        return this.nestingOfFunction != 0;
    }

    public String lookupMessage(String str) {
        return lookupMessage(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void markDestructuring(AstNode astNode) {
        if (astNode instanceof DestructuringForm) {
            ((DestructuringForm) astNode).setIsDestructuring(true);
        } else if (astNode instanceof ParenthesizedExpression) {
            markDestructuring(((ParenthesizedExpression) astNode).getExpression());
        }
    }

    public AstRoot parse(String str, String str2, int i) {
        if (this.parseFinished) {
            throw new IllegalStateException("parser reused");
        }
        this.sourceURI = str2;
        if (this.compilerEnv.isIdeMode()) {
            this.sourceChars = str.toCharArray();
        }
        this.ts = new i(this, null, str, i);
        try {
            try {
                AstRoot astRoot = parse();
                this.parseFinished = true;
                return astRoot;
            } catch (IOException unused) {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            this.parseFinished = true;
            throw th;
        }
    }

    public void popScope() {
        this.currentScope = this.currentScope.getParentScope();
    }

    public void pushScope(Scope scope) {
        Scope parentScope = scope.getParentScope();
        if (parentScope == null) {
            this.currentScope.addChildScope(scope);
        } else if (parentScope != this.currentScope) {
            codeBug();
        }
        this.currentScope = scope;
    }

    public AstNode removeParens(AstNode astNode) {
        while (astNode instanceof ParenthesizedExpression) {
            astNode = ((ParenthesizedExpression) astNode).getExpression();
        }
        return astNode;
    }

    public void reportError(String str) {
        reportError(str, null);
    }

    public void setDefaultUseStrictDirective(boolean z) {
        this.defaultUseStrictDirective = z;
    }

    public void setIsGenerator() {
        if (insideFunction()) {
            ((FunctionNode) this.currentScriptOrFn).setIsGenerator();
        }
    }

    public void setRequiresActivation() {
        if (insideFunction()) {
            ((FunctionNode) this.currentScriptOrFn).setRequiresActivation();
        }
    }

    public Node simpleAssignment(Node node, Node node2) {
        Node firstChild;
        Node lastChild;
        int i;
        int type = node.getType();
        if (type != 33 && type != 36) {
            if (type != 39) {
                if (type != 68) {
                    throw codeBug();
                }
                Node firstChild2 = node.getFirstChild();
                checkMutableReference(firstChild2);
                return new Node(69, firstChild2, node2);
            }
            String identifier = ((Name) node).getIdentifier();
            if (this.inUseStrictDirective && ("eval".equals(identifier) || "arguments".equals(identifier))) {
                reportError("msg.bad.id.strict", identifier);
            }
            node.setType(49);
            return new Node(8, node, node2);
        }
        if (node instanceof PropertyGet) {
            PropertyGet propertyGet = (PropertyGet) node;
            firstChild = propertyGet.getTarget();
            lastChild = propertyGet.getProperty();
        } else if (node instanceof ElementGet) {
            ElementGet elementGet = (ElementGet) node;
            firstChild = elementGet.getTarget();
            lastChild = elementGet.getElement();
        } else {
            firstChild = node.getFirstChild();
            lastChild = node.getLastChild();
        }
        if (type == 33) {
            lastChild.setType(41);
            i = 35;
        } else {
            i = 37;
        }
        return new Node(i, firstChild, lastChild, node2);
    }

    public Parser(CompilerEnvirons compilerEnvirons) {
        this(compilerEnvirons, compilerEnvirons.getErrorReporter());
    }

    private Name createNameNode(boolean z, int i) {
        i iVar = this.ts;
        int i2 = iVar.y;
        String strS = iVar.s();
        int i3 = this.ts.r;
        String str = "";
        if (!"".equals(this.prevNameTokenString)) {
            i2 = this.prevNameTokenStart;
            strS = this.prevNameTokenString;
            i3 = this.prevNameTokenLineno;
            this.prevNameTokenStart = 0;
            this.prevNameTokenString = "";
            this.prevNameTokenLineno = 0;
        }
        if (strS != null) {
            str = strS;
        } else if (!this.compilerEnv.isIdeMode()) {
            codeBug();
            str = strS;
        }
        Name name = new Name(i2, str);
        name.setLineno(i3);
        if (z) {
            checkActivationName(str, i);
        }
        return name;
    }

    private FunctionNode function(int i, boolean z) throws IOException {
        Name nameCreateNameNode;
        i iVar = this.ts;
        int i2 = iVar.r;
        int i3 = iVar.y;
        AstNode astNodeMemberExprTail = null;
        if (matchToken(39, true)) {
            nameCreateNameNode = createNameNode(true, 39);
            if (this.inUseStrictDirective) {
                String identifier = nameCreateNameNode.getIdentifier();
                if ("eval".equals(identifier) || "arguments".equals(identifier)) {
                    reportError("msg.bad.id.strict", identifier);
                }
            }
            if (!matchToken(88, true)) {
                if (this.compilerEnv.isAllowMemberExprAsFunctionName()) {
                    astNodeMemberExprTail = memberExprTail(false, nameCreateNameNode);
                    nameCreateNameNode = null;
                }
                mustMatchToken(88, "msg.no.paren.parms", true);
            }
        } else if (matchToken(88, true)) {
            nameCreateNameNode = null;
        } else {
            if (matchToken(23, true) && this.compilerEnv.getLanguageVersion() >= 200) {
                return function(i, true);
            }
            AstNode astNodeMemberExpr = this.compilerEnv.isAllowMemberExprAsFunctionName() ? memberExpr(false) : null;
            mustMatchToken(88, "msg.no.paren.parms", true);
            astNodeMemberExprTail = astNodeMemberExpr;
            nameCreateNameNode = null;
        }
        int i4 = this.currentToken == 88 ? this.ts.y : -1;
        if ((astNodeMemberExprTail != null ? 2 : i) != 2 && nameCreateNameNode != null && nameCreateNameNode.length() > 0) {
            defineSymbol(110, nameCreateNameNode.getIdentifier());
        }
        FunctionNode functionNode = new FunctionNode(i3, nameCreateNameNode);
        functionNode.setFunctionType(i);
        if (z) {
            functionNode.setIsES6Generator();
        }
        if (i4 != -1) {
            functionNode.setLp(i4 - i3);
        }
        functionNode.setJsDocNode(getAndResetJsDoc());
        PerFunctionVariables perFunctionVariables = new PerFunctionVariables(functionNode);
        try {
            parseFunctionParams(functionNode);
            functionNode.setBody(parseFunctionBody(i, functionNode));
            functionNode.setEncodedSourceBounds(i3, this.ts.z);
            functionNode.setLength(this.ts.z - i3);
            if (this.compilerEnv.isStrictMode() && !functionNode.getBody().hasConsistentReturnUsage()) {
                addStrictWarning((nameCreateNameNode == null || nameCreateNameNode.length() <= 0) ? "msg.anon.no.return.value" : "msg.no.return.value", nameCreateNameNode == null ? "" : nameCreateNameNode.getIdentifier());
            }
            perFunctionVariables.restore();
            if (astNodeMemberExprTail != null) {
                Kit.codeBug();
                functionNode.setMemberExprNode(astNodeMemberExprTail);
            }
            functionNode.setSourceName(this.sourceURI);
            functionNode.setBaseLineno(i2);
            functionNode.setEndLineno(this.ts.r);
            if (this.compilerEnv.isIdeMode()) {
                functionNode.setParentScope(this.currentScope);
            }
            return functionNode;
        } catch (Throwable th) {
            perFunctionVariables.restore();
            throw th;
        }
    }

    private AstNode generatorExpression(AstNode astNode, int i, boolean z) throws IOException {
        int i2;
        b bVarCondition;
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 120) {
            arrayList.add(generatorExpressionLoop());
        }
        if (peekToken() == 113) {
            consumeToken();
            i2 = this.ts.y - i;
            bVarCondition = condition();
        } else {
            i2 = -1;
            bVarCondition = null;
        }
        if (!z) {
            mustMatchToken(89, "msg.no.paren.let", true);
        }
        GeneratorExpression generatorExpression = new GeneratorExpression(i, this.ts.z - i);
        generatorExpression.setResult(astNode);
        generatorExpression.setLoops(arrayList);
        if (bVarCondition != null) {
            generatorExpression.setIfPosition(i2);
            generatorExpression.setFilter(bVarCondition.a);
            generatorExpression.setFilterLp(bVarCondition.b - i);
            generatorExpression.setFilterRp(bVarCondition.c - i);
        }
        return generatorExpression;
    }

    private boolean mustMatchToken(int i, String str, int i2, int i3, boolean z) throws IOException {
        if (matchToken(i, z)) {
            return true;
        }
        reportError(str, i2, i3);
        return false;
    }

    public void addError(String str, int i, int i2) {
        addError(str, null, i, i2);
    }

    public void defineSymbol(int i, String str, boolean z) {
        if (str == null) {
            if (this.compilerEnv.isIdeMode()) {
                return;
            } else {
                codeBug();
            }
        }
        Scope definingScope = this.currentScope.getDefiningScope(str);
        org.mozilla.javascript.ast.Symbol symbol = definingScope != null ? definingScope.getSymbol(str) : null;
        int declType = symbol != null ? symbol.getDeclType() : -1;
        String str2 = "msg.var.redecl";
        if (symbol != null && (declType == 155 || i == 155 || (definingScope == this.currentScope && declType == 154))) {
            if (declType == 155) {
                str2 = "msg.const.redecl";
            } else if (declType == 154) {
                str2 = "msg.let.redecl";
            } else if (declType != 123) {
                str2 = declType == 110 ? "msg.fn.redecl" : "msg.parm.redecl";
            }
            addError(str2, str);
            return;
        }
        if (i == 88) {
            if (symbol != null) {
                addWarning("msg.dup.parms", str);
            }
            this.currentScriptOrFn.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
            return;
        }
        if (i != 110 && i != 123) {
            if (i == 154) {
                if (z || !(this.currentScope.getType() == 113 || (this.currentScope instanceof Loop))) {
                    this.currentScope.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
                    return;
                } else {
                    addError("msg.let.decl.not.in.block");
                    return;
                }
            }
            if (i != 155) {
                throw codeBug();
            }
        }
        if (symbol == null) {
            this.currentScriptOrFn.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
        } else if (declType == 123) {
            addStrictWarning("msg.var.redecl", str);
        } else if (declType == 88) {
            addStrictWarning("msg.var.hides.arg", str);
        }
    }

    public String lookupMessage(String str, String str2) {
        return str2 == null ? ScriptRuntime.getMessage0(str) : ScriptRuntime.getMessage1(str, str2);
    }

    public void reportError(String str, String str2) {
        i iVar = this.ts;
        if (iVar == null) {
            reportError(str, str2, 1, 1);
        } else {
            int i = iVar.y;
            reportError(str, str2, i, iVar.z - i);
        }
    }

    public Parser(CompilerEnvirons compilerEnvirons, ErrorReporter errorReporter) {
        this.currentFlaggedToken = 0;
        this.prevNameTokenString = "";
        this.compilerEnv = compilerEnvirons;
        this.errorReporter = errorReporter;
        if (errorReporter instanceof IdeErrorReporter) {
            this.errorCollector = (IdeErrorReporter) errorReporter;
        }
    }

    public void addError(String str, String str2) {
        i iVar = this.ts;
        int i = iVar.y;
        addError(str, str2, i, iVar.z - i);
    }

    public Node createName(int i, String str, Node node) {
        Node nodeCreateName = createName(str);
        nodeCreateName.setType(i);
        if (node != null) {
            nodeCreateName.addChildToBack(node);
        }
        return nodeCreateName;
    }

    public void addError(String str, int i) {
        String string = Character.toString((char) i);
        i iVar = this.ts;
        int i2 = iVar.y;
        addError(str, string, i2, iVar.z - i2);
    }

    public void addStrictWarning(String str, String str2, int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2);
        }
    }

    public void addWarning(String str, int i, int i2) {
        addWarning(str, null, i, i2);
    }

    public void reportError(String str, int i, int i2) {
        reportError(str, null, i, i2);
    }

    public void addError(String str, String str2, int i, int i2) {
        String strL;
        int i3;
        int iQ;
        this.syntaxErrorCount++;
        String strLookupMessage = lookupMessage(str, str2);
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.error(strLookupMessage, this.sourceURI, i, i2);
            return;
        }
        i iVar = this.ts;
        if (iVar != null) {
            int iN = iVar.n();
            strL = this.ts.l();
            iQ = this.ts.q();
            i3 = iN;
        } else {
            strL = "";
            i3 = 1;
            iQ = 1;
        }
        this.errorReporter.error(strLookupMessage, this.sourceURI, i3, strL, iQ);
    }

    public void addWarning(String str, String str2, int i, int i2) {
        String strLookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2);
            return;
        }
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.warning(strLookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(strLookupMessage, this.sourceURI, this.ts.n(), this.ts.l(), this.ts.q());
        }
    }

    public void reportError(String str, String str2, int i, int i2) {
        addError(str, str2, i, i2);
        if (!this.compilerEnv.recoverFromErrors()) {
            throw new ParserException();
        }
    }

    private void addStrictWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2, i3, str3, i4);
        }
    }

    private AstNode statements() throws IOException {
        return statements(null);
    }

    @Deprecated
    public AstRoot parse(Reader reader, String str, int i) throws IOException {
        if (!this.parseFinished) {
            if (this.compilerEnv.isIdeMode()) {
                return parse(Kit.readReader(reader), str, i);
            }
            try {
                this.sourceURI = str;
                this.ts = new i(this, reader, null, i);
                return parse();
            } finally {
                this.parseFinished = true;
            }
        }
        throw new IllegalStateException("parser reused");
    }

    private void addWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        String strLookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2, i3, str3, i4);
            return;
        }
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.warning(strLookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(strLookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    private void addError(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        this.syntaxErrorCount++;
        String strLookupMessage = lookupMessage(str, str2);
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.error(strLookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.error(strLookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x008a  */
    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ce A[LOOP:1: B:47:0x00c8->B:49:0x00ce, LOOP_END] */
    private AstRoot parse() throws IOException {
        int i;
        List<Comment> list;
        Iterator<Comment> it;
        String strLookupMessage;
        AstNode astNodeStatement;
        AstRoot astRoot = new AstRoot(0);
        this.currentScriptOrFn = astRoot;
        this.currentScope = astRoot;
        int i2 = this.ts.r;
        boolean z = this.inUseStrictDirective;
        boolean z2 = this.defaultUseStrictDirective;
        this.inUseStrictDirective = z2;
        if (z2) {
            astRoot.setInStrictMode(true);
        }
        int iMax = 0;
        boolean z3 = true;
        while (true) {
            try {
                try {
                    int iPeekToken = peekToken();
                    if (iPeekToken <= 0) {
                        break;
                    }
                    if (iPeekToken == 110) {
                        consumeToken();
                        try {
                            astNodeStatement = function(this.calledByCompileFunction ? 2 : 1);
                        } catch (ParserException unused) {
                        }
                    } else if (iPeekToken == 162) {
                        List<Comment> list2 = this.scannedComments;
                        astNodeStatement = list2.get(list2.size() - 1);
                        consumeToken();
                    } else {
                        astNodeStatement = statement();
                        if (z3) {
                            String directive = getDirective(astNodeStatement);
                            if (directive == null) {
                                z3 = false;
                            } else if (directive.equals("use strict")) {
                                this.inUseStrictDirective = true;
                                astRoot.setInStrictMode(true);
                            }
                        }
                    }
                    iMax = getNodeEnd(astNodeStatement);
                    astRoot.addChildToBack(astNodeStatement);
                    astNodeStatement.setParent(astRoot);
                } catch (StackOverflowError unused2) {
                    String strLookupMessage2 = lookupMessage("msg.too.deep.parser.recursion");
                    if (!this.compilerEnv.isIdeMode()) {
                        throw Context.reportRuntimeError(strLookupMessage2, this.sourceURI, this.ts.r, null, 0);
                    }
                }
                this.inUseStrictDirective = z;
                i = this.syntaxErrorCount;
                if (i != 0) {
                    strLookupMessage = lookupMessage("msg.got.syntax.errors", String.valueOf(i));
                    if (!this.compilerEnv.isIdeMode()) {
                        throw this.errorReporter.runtimeError(strLookupMessage, this.sourceURI, i2, null, 0);
                    }
                }
                list = this.scannedComments;
                if (list != null) {
                    iMax = Math.max(iMax, getNodeEnd(this.scannedComments.get(list.size() - 1)));
                    it = this.scannedComments.iterator();
                    while (it.hasNext()) {
                        astRoot.addComment(it.next());
                    }
                }
                astRoot.setLength(iMax);
                astRoot.setSourceName(this.sourceURI);
                astRoot.setBaseLineno(i2);
                astRoot.setEndLineno(this.ts.r);
                return astRoot;
            } catch (Throwable th) {
                this.inUseStrictDirective = z;
                throw th;
            }
        }
        this.inUseStrictDirective = z;
        i = this.syntaxErrorCount;
        if (i != 0) {
            strLookupMessage = lookupMessage("msg.got.syntax.errors", String.valueOf(i));
            if (!this.compilerEnv.isIdeMode()) {
                throw this.errorReporter.runtimeError(strLookupMessage, this.sourceURI, i2, null, 0);
            }
        }
        list = this.scannedComments;
        if (list != null) {
            iMax = Math.max(iMax, getNodeEnd(this.scannedComments.get(list.size() - 1)));
            it = this.scannedComments.iterator();
            while (it.hasNext()) {
                astRoot.addComment(it.next());
            }
        }
        astRoot.setLength(iMax);
        astRoot.setSourceName(this.sourceURI);
        astRoot.setBaseLineno(i2);
        astRoot.setEndLineno(this.ts.r);
        return astRoot;
    }
}
