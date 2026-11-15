package org.mvel2;

import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.ast.ASTNode;
import org.mvel2.ast.Substatement;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;

public class MVELInterpretedRuntime extends AbstractParser {
    private static final Logger LOG = Logger.getLogger(MVELInterpretedRuntime.class.getName());
    private Object holdOverRegister;

    MVELInterpretedRuntime(char[] cArr, Object obj, Map<String, Object> map) {
        this.expr = cArr;
        this.length = cArr.length;
        this.ctx = obj;
        this.variableFactory = new MapVariableResolverFactory(map);
    }

    private boolean hasMore() {
        return this.cursor <= this.end;
    }

    private Object parseAndExecuteInterpreted() {
        this.lastWasIdentifier = false;
        ASTNode aSTNodeNextToken = null;
        while (true) {
            try {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken == null) {
                    Object obj = this.holdOverRegister;
                    return obj != null ? obj : this.stk.k();
                }
                this.holdOverRegister = null;
                if (this.lastWasIdentifier && this.lastNode.isDiscard()) {
                    this.stk.e();
                }
                if (this.stk.g()) {
                    if ((aSTNodeNextToken.fields & 4194304) != 0) {
                        org.mvel2.util.g gVar = this.stk;
                        gVar.q(aSTNodeNextToken.getReducedValue(gVar, this.ctx, this.variableFactory));
                        Object objK = this.stk.k();
                        if (objK instanceof Integer) {
                            arithmeticFunctionReduction(((Integer) objK).intValue());
                        }
                    } else {
                        org.mvel2.util.g gVar2 = this.stk;
                        Object obj2 = this.ctx;
                        gVar2.q(aSTNodeNextToken.getReducedValue(obj2, obj2, this.variableFactory));
                    }
                    if ((aSTNodeNextToken instanceof Substatement) && (aSTNodeNextToken = nextToken()) != null) {
                        Integer operator = aSTNodeNextToken.getOperator();
                        int iIntValue = operator.intValue();
                        if (AbstractParser.isArithmeticOperator(iIntValue)) {
                            org.mvel2.util.g gVar3 = this.stk;
                            ASTNode aSTNodeNextToken2 = nextToken();
                            Object obj3 = this.ctx;
                            gVar3.r(aSTNodeNextToken2.getReducedValue(obj3, obj3, this.variableFactory), operator);
                            if (procBooleanOperator(arithmeticFunctionReduction(iIntValue)) == -1) {
                                return this.stk.k();
                            }
                        }
                    }
                }
                if (this.variableFactory.tiltFlag()) {
                    return this.stk.n();
                }
                Integer operator2 = aSTNodeNextToken.getOperator();
                int iIntValue2 = operator2.intValue();
                int iProcBooleanOperator = procBooleanOperator(iIntValue2);
                if (iProcBooleanOperator != -2) {
                    if (iProcBooleanOperator == -1) {
                        return this.stk.k();
                    }
                    if (iProcBooleanOperator == 0) {
                        continue;
                    } else {
                        if (iProcBooleanOperator == 99) {
                            this.variableFactory.setTiltFlag(true);
                            return this.stk.n();
                        }
                        org.mvel2.util.g gVar4 = this.stk;
                        ASTNode aSTNodeNextToken3 = nextToken();
                        Object obj4 = this.ctx;
                        gVar4.r(aSTNodeNextToken3.getReducedValue(obj4, obj4, this.variableFactory), operator2);
                        int iArithmeticFunctionReduction = arithmeticFunctionReduction(iIntValue2);
                        if (iArithmeticFunctionReduction == -1) {
                            return this.stk.k();
                        }
                        if (iArithmeticFunctionReduction != 0 && procBooleanOperator(iArithmeticFunctionReduction) == -1) {
                            return this.stk.k();
                        }
                    }
                } else if (aSTNodeNextToken.isOperator()) {
                    continue;
                } else {
                    if (!(this.stk.k() instanceof Class)) {
                        throw new CompileException("unexpected token or unknown identifier:" + aSTNodeNextToken.getName(), this.expr, this.f68799st);
                    }
                    this.variableFactory.createVariable(aSTNodeNextToken.getName(), null, (Class) this.stk.k());
                }
            } catch (NullPointerException e10) {
                if (aSTNodeNextToken == null || !aSTNodeNextToken.isOperator()) {
                    throw e10;
                }
                CompileException compileException = new CompileException("incomplete statement: " + aSTNodeNextToken.getName() + " (possible use of reserved keyword as identifier: " + aSTNodeNextToken.getName() + ")", this.expr, this.f68799st, e10);
                compileException.setExpr(this.expr);
                compileException.setLineNumber(this.line);
                compileException.setCursor(this.cursor);
                throw compileException;
            } catch (CompileException e11) {
                throw org.mvel2.util.f.a(e11, this.expr, this.start);
            }
        }
    }

    private int procBooleanOperator(int i10) {
        ASTNode aSTNodeNextToken;
        if (i10 == -1) {
            return -2;
        }
        if (i10 == 37) {
            if (hasMore()) {
                this.holdOverRegister = this.stk.n();
                this.stk.b();
            }
            return 0;
        }
        if (i10 == 99) {
            return 99;
        }
        if (i10 == 29) {
            if (!this.stk.p().booleanValue()) {
                this.stk.b();
                do {
                    aSTNodeNextToken = nextToken();
                    if (aSTNodeNextToken == null) {
                        break;
                    }
                } while (!aSTNodeNextToken.isOperator(30));
            }
            return 0;
        }
        if (i10 == 30) {
            captureToEOS();
            return 0;
        }
        switch (i10) {
            case 21:
                reduceRight();
                if (this.stk.m().booleanValue()) {
                    this.stk.e();
                    return 0;
                }
                if (unwindStatement(i10)) {
                    return -1;
                }
                this.stk.b();
                return 0;
            case 22:
                reduceRight();
                if (!this.stk.m().booleanValue()) {
                    this.stk.e();
                    return 0;
                }
                if (unwindStatement(i10)) {
                    return -1;
                }
                this.stk.b();
                return 0;
            case 23:
                return !BlankLiteral.INSTANCE.equals(this.stk.k()) ? -1 : 1;
            default:
                return 1;
        }
    }

    private void reduceRight() {
        if (this.dStack.g()) {
            return;
        }
        this.stk.s(this.dStack.n(), this.stk.n(), this.dStack.n());
        reduce();
    }

    private boolean unwindStatement(int i10) {
        ASTNode aSTNodeNextToken;
        if (i10 != 21) {
            do {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken == null) {
                    break;
                }
            } while (!aSTNodeNextToken.isOperator(37));
        } else {
            do {
                aSTNodeNextToken = nextToken();
                if (aSTNodeNextToken == null || aSTNodeNextToken.isOperator(37)) {
                    break;
                }
            } while (!aSTNodeNextToken.isOperator(22));
        }
        return aSTNodeNextToken == null;
    }

    public Object parse() {
        try {
            this.stk = new org.mvel2.util.g();
            this.dStack = new org.mvel2.util.g();
            this.variableFactory.setTiltFlag(false);
            this.cursor = this.start;
            return parseAndExecuteInterpreted();
        } catch (ArrayIndexOutOfBoundsException e10) {
            LOG.log(Level.WARNING, "", (Throwable) e10);
            throw new CompileException("unexpected end of statement", this.expr, this.length);
        } catch (NullPointerException e11) {
            LOG.log(Level.WARNING, "", (Throwable) e11);
            if (this.cursor >= this.length) {
                throw new CompileException("unexpected end of statement", this.expr, this.length);
            }
            throw e11;
        } catch (CompileException e12) {
            throw org.mvel2.util.f.a(e12, this.expr, this.cursor);
        }
    }

    MVELInterpretedRuntime(char[] cArr, Object obj) {
        this.expr = cArr;
        this.length = cArr.length;
        this.ctx = obj;
        this.variableFactory = new ImmutableDefaultFactory();
    }

    MVELInterpretedRuntime(String str) {
        setExpression(str);
        this.variableFactory = new ImmutableDefaultFactory();
    }

    MVELInterpretedRuntime(char[] cArr) {
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
    }

    public MVELInterpretedRuntime(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory) {
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(char[] cArr, int i10, int i11, Object obj, VariableResolverFactory variableResolverFactory) {
        this.expr = cArr;
        this.start = i10;
        int i12 = i11 + i10;
        this.end = i12;
        this.length = i12 - i10;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(char[] cArr, int i10, int i11, Object obj, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        int i12 = i11 + i10;
        this.end = i12;
        this.length = i12 - i10;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    public MVELInterpretedRuntime(String str, Object obj, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        super(parserContext);
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
    }

    MVELInterpretedRuntime(String str, VariableResolverFactory variableResolverFactory) {
        setExpression(str);
        this.variableFactory = variableResolverFactory;
        this.pCtx.initializeTables();
    }

    MVELInterpretedRuntime(String str, Object obj) {
        setExpression(str);
        this.ctx = obj;
        this.variableFactory = new ImmutableDefaultFactory();
    }
}
