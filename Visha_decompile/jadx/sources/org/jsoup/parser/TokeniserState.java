package org.jsoup.parser;

import defpackage.nv0;
import okio.Utf8;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.CharUtils;
import org.apache.commons.text.lookup.StringLookupFactory;

enum TokeniserState {
    Data {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                bVar.j(nv0Var.e());
            } else {
                if (cT == '&') {
                    bVar.a(TokeniserState.CharacterReferenceInData);
                    return;
                }
                if (cT == '<') {
                    bVar.a(TokeniserState.TagOpen);
                } else if (cT != 65535) {
                    bVar.k(nv0Var.g());
                } else {
                    bVar.m(new Token.f());
                }
            }
        }
    },
    CharacterReferenceInData {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.d(bVar, TokeniserState.Data);
        }
    },
    Rcdata {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                nv0Var.a();
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
            } else {
                if (cT == '&') {
                    bVar.a(TokeniserState.CharacterReferenceInRcdata);
                    return;
                }
                if (cT == '<') {
                    bVar.a(TokeniserState.RcdataLessthanSign);
                } else if (cT != 65535) {
                    bVar.k(nv0Var.g());
                } else {
                    bVar.m(new Token.f());
                }
            }
        }
    },
    CharacterReferenceInRcdata {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.d(bVar, TokeniserState.Rcdata);
        }
    },
    Rawtext {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.f(bVar, nv0Var, this, TokeniserState.RawtextLessthanSign);
        }
    },
    ScriptData {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.f(bVar, nv0Var, this, TokeniserState.ScriptDataLessthanSign);
        }
    },
    PLAINTEXT {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                nv0Var.a();
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
            } else if (cT != 65535) {
                bVar.k(nv0Var.n((char) 0));
            } else {
                bVar.m(new Token.f());
            }
        }
    },
    TagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == '!') {
                bVar.a(TokeniserState.MarkupDeclarationOpen);
                return;
            }
            if (cT == '/') {
                bVar.a(TokeniserState.EndTagOpen);
                return;
            }
            if (cT == '?') {
                bVar.e();
                bVar.w(TokeniserState.BogusComment);
            } else if (nv0Var.D()) {
                bVar.h(true);
                bVar.w(TokeniserState.TagName);
            } else {
                bVar.t(this);
                bVar.j('<');
                bVar.w(TokeniserState.Data);
            }
        }
    },
    EndTagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.u()) {
                bVar.r(this);
                bVar.k("</");
                bVar.w(TokeniserState.Data);
            } else if (nv0Var.D()) {
                bVar.h(false);
                bVar.w(TokeniserState.TagName);
            } else if (nv0Var.z('>')) {
                bVar.t(this);
                bVar.a(TokeniserState.Data);
            } else {
                bVar.t(this);
                bVar.e();
                bVar.n.p(IOUtils.DIR_SEPARATOR_UNIX);
                bVar.w(TokeniserState.BogusComment);
            }
        }
    },
    TagName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            bVar.i.v(nv0Var.m());
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.i.v(TokeniserState.b);
                return;
            }
            if (cE != ' ') {
                if (cE == '/') {
                    bVar.w(TokeniserState.SelfClosingStartTag);
                    return;
                }
                if (cE == '<') {
                    nv0Var.M();
                    bVar.t(this);
                } else if (cE != '>') {
                    if (cE == 65535) {
                        bVar.r(this);
                        bVar.w(TokeniserState.Data);
                        return;
                    } else if (cE != '\t' && cE != '\n' && cE != '\f' && cE != '\r') {
                        bVar.i.u(cE);
                        return;
                    }
                }
                bVar.q();
                bVar.w(TokeniserState.Data);
                return;
            }
            bVar.w(TokeniserState.BeforeAttributeName);
        }
    },
    RcdataLessthanSign {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.z(IOUtils.DIR_SEPARATOR_UNIX)) {
                bVar.i();
                bVar.a(TokeniserState.RCDATAEndTagOpen);
                return;
            }
            if (nv0Var.D() && bVar.b() != null) {
                if (!nv0Var.s("</" + bVar.b())) {
                    bVar.i = bVar.h(false).D(bVar.b());
                    bVar.q();
                    bVar.w(TokeniserState.TagOpen);
                    return;
                }
            }
            bVar.k("<");
            bVar.w(TokeniserState.Rcdata);
        }
    },
    RCDATAEndTagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (!nv0Var.D()) {
                bVar.k("</");
                bVar.w(TokeniserState.Rcdata);
            } else {
                bVar.h(false);
                bVar.i.u(nv0Var.t());
                bVar.h.append(nv0Var.t());
                bVar.a(TokeniserState.RCDATAEndTagName);
            }
        }
    },
    RCDATAEndTagName {
        public final void g(b bVar, nv0 nv0Var) {
            bVar.k("</");
            bVar.l(bVar.h);
            nv0Var.M();
            bVar.w(TokeniserState.Rcdata);
        }

        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.D()) {
                String strJ = nv0Var.j();
                bVar.i.v(strJ);
                bVar.h.append(strJ);
                return;
            }
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                if (bVar.u()) {
                    bVar.w(TokeniserState.BeforeAttributeName);
                    return;
                } else {
                    g(bVar, nv0Var);
                    return;
                }
            }
            if (cE == '/') {
                if (bVar.u()) {
                    bVar.w(TokeniserState.SelfClosingStartTag);
                    return;
                } else {
                    g(bVar, nv0Var);
                    return;
                }
            }
            if (cE != '>') {
                g(bVar, nv0Var);
            } else if (!bVar.u()) {
                g(bVar, nv0Var);
            } else {
                bVar.q();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    RawtextLessthanSign {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.z(IOUtils.DIR_SEPARATOR_UNIX)) {
                bVar.i();
                bVar.a(TokeniserState.RawtextEndTagOpen);
            } else {
                bVar.j('<');
                bVar.w(TokeniserState.Rawtext);
            }
        }
    },
    RawtextEndTagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.e(bVar, nv0Var, TokeniserState.RawtextEndTagName, TokeniserState.Rawtext);
        }
    },
    RawtextEndTagName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.b(bVar, nv0Var, TokeniserState.Rawtext);
        }
    },
    ScriptDataLessthanSign {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '!') {
                bVar.k("<!");
                bVar.w(TokeniserState.ScriptDataEscapeStart);
                return;
            }
            if (cE == '/') {
                bVar.i();
                bVar.w(TokeniserState.ScriptDataEndTagOpen);
            } else if (cE != 65535) {
                bVar.k("<");
                nv0Var.M();
                bVar.w(TokeniserState.ScriptData);
            } else {
                bVar.k("<");
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            }
        }
    },
    ScriptDataEndTagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.e(bVar, nv0Var, TokeniserState.ScriptDataEndTagName, TokeniserState.ScriptData);
        }
    },
    ScriptDataEndTagName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.b(bVar, nv0Var, TokeniserState.ScriptData);
        }
    },
    ScriptDataEscapeStart {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (!nv0Var.z('-')) {
                bVar.w(TokeniserState.ScriptData);
            } else {
                bVar.j('-');
                bVar.a(TokeniserState.ScriptDataEscapeStartDash);
            }
        }
    },
    ScriptDataEscapeStartDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (!nv0Var.z('-')) {
                bVar.w(TokeniserState.ScriptData);
            } else {
                bVar.j('-');
                bVar.a(TokeniserState.ScriptDataEscapedDashDash);
            }
        }
    },
    ScriptDataEscaped {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.u()) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
                return;
            }
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                nv0Var.a();
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
            } else if (cT == '-') {
                bVar.j('-');
                bVar.a(TokeniserState.ScriptDataEscapedDash);
            } else if (cT != '<') {
                bVar.k(nv0Var.p('-', '<', 0));
            } else {
                bVar.a(TokeniserState.ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.u()) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
                return;
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.ScriptDataEscaped);
            } else if (cE == '-') {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataEscapedDashDash);
            } else if (cE == '<') {
                bVar.w(TokeniserState.ScriptDataEscapedLessthanSign);
            } else {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedDashDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.u()) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
                return;
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.ScriptDataEscaped);
            } else {
                if (cE == '-') {
                    bVar.j(cE);
                    return;
                }
                if (cE == '<') {
                    bVar.w(TokeniserState.ScriptDataEscapedLessthanSign);
                } else if (cE != '>') {
                    bVar.j(cE);
                    bVar.w(TokeniserState.ScriptDataEscaped);
                } else {
                    bVar.j(cE);
                    bVar.w(TokeniserState.ScriptData);
                }
            }
        }
    },
    ScriptDataEscapedLessthanSign {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.D()) {
                bVar.i();
                bVar.h.append(nv0Var.t());
                bVar.k("<");
                bVar.j(nv0Var.t());
                bVar.a(TokeniserState.ScriptDataDoubleEscapeStart);
                return;
            }
            if (nv0Var.z(IOUtils.DIR_SEPARATOR_UNIX)) {
                bVar.i();
                bVar.a(TokeniserState.ScriptDataEscapedEndTagOpen);
            } else {
                bVar.j('<');
                bVar.w(TokeniserState.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (!nv0Var.D()) {
                bVar.k("</");
                bVar.w(TokeniserState.ScriptDataEscaped);
            } else {
                bVar.h(false);
                bVar.i.u(nv0Var.t());
                bVar.h.append(nv0Var.t());
                bVar.a(TokeniserState.ScriptDataEscapedEndTagName);
            }
        }
    },
    ScriptDataEscapedEndTagName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.b(bVar, nv0Var, TokeniserState.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.a(bVar, nv0Var, TokeniserState.ScriptDataDoubleEscaped, TokeniserState.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                nv0Var.a();
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
            } else if (cT == '-') {
                bVar.j(cT);
                bVar.a(TokeniserState.ScriptDataDoubleEscapedDash);
            } else if (cT == '<') {
                bVar.j(cT);
                bVar.a(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cT != 65535) {
                bVar.k(nv0Var.p('-', '<', 0));
            } else {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.ScriptDataDoubleEscaped);
            } else if (cE == '-') {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataDoubleEscapedDashDash);
            } else if (cE == '<') {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cE != 65535) {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.j(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.ScriptDataDoubleEscaped);
                return;
            }
            if (cE == '-') {
                bVar.j(cE);
                return;
            }
            if (cE == '<') {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cE == '>') {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptData);
            } else if (cE != 65535) {
                bVar.j(cE);
                bVar.w(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (!nv0Var.z(IOUtils.DIR_SEPARATOR_UNIX)) {
                bVar.w(TokeniserState.ScriptDataDoubleEscaped);
                return;
            }
            bVar.j(IOUtils.DIR_SEPARATOR_UNIX);
            bVar.i();
            bVar.a(TokeniserState.ScriptDataDoubleEscapeEnd);
        }
    },
    ScriptDataDoubleEscapeEnd {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            TokeniserState.a(bVar, nv0Var, TokeniserState.ScriptDataEscaped, TokeniserState.ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                nv0Var.M();
                bVar.t(this);
                bVar.i.E();
                bVar.w(TokeniserState.AttributeName);
                return;
            }
            if (cE != ' ') {
                if (cE != '\"' && cE != '\'') {
                    if (cE == '/') {
                        bVar.w(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (cE == 65535) {
                        bVar.r(this);
                        bVar.w(TokeniserState.Data);
                        return;
                    }
                    if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r') {
                        return;
                    }
                    switch (cE) {
                        case '<':
                            nv0Var.M();
                            bVar.t(this);
                            break;
                        case '=':
                            break;
                        case '>':
                            break;
                        default:
                            bVar.i.E();
                            nv0Var.M();
                            bVar.w(TokeniserState.AttributeName);
                            return;
                    }
                    bVar.q();
                    bVar.w(TokeniserState.Data);
                    return;
                }
                bVar.t(this);
                bVar.i.E();
                bVar.i.p(cE);
                bVar.w(TokeniserState.AttributeName);
            }
        }
    },
    AttributeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            bVar.i.q(nv0Var.q(TokeniserState.attributeNameCharsSorted));
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.AfterAttributeName);
                return;
            }
            if (cE != '\"' && cE != '\'') {
                if (cE == '/') {
                    bVar.w(TokeniserState.SelfClosingStartTag);
                    return;
                }
                if (cE == 65535) {
                    bVar.r(this);
                    bVar.w(TokeniserState.Data);
                    return;
                }
                switch (cE) {
                    case '<':
                        break;
                    case '=':
                        bVar.w(TokeniserState.BeforeAttributeValue);
                        break;
                    case '>':
                        bVar.q();
                        bVar.w(TokeniserState.Data);
                        break;
                    default:
                        bVar.i.p(cE);
                        break;
                }
                return;
            }
            bVar.t(this);
            bVar.i.p(cE);
        }
    },
    AfterAttributeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.i.p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.AttributeName);
                return;
            }
            if (cE != ' ') {
                if (cE != '\"' && cE != '\'') {
                    if (cE == '/') {
                        bVar.w(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (cE == 65535) {
                        bVar.r(this);
                        bVar.w(TokeniserState.Data);
                        return;
                    }
                    if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r') {
                        return;
                    }
                    switch (cE) {
                        case '<':
                            break;
                        case '=':
                            bVar.w(TokeniserState.BeforeAttributeValue);
                            break;
                        case '>':
                            bVar.q();
                            bVar.w(TokeniserState.Data);
                            break;
                        default:
                            bVar.i.E();
                            nv0Var.M();
                            bVar.w(TokeniserState.AttributeName);
                            break;
                    }
                    return;
                }
                bVar.t(this);
                bVar.i.E();
                bVar.i.p(cE);
                bVar.w(TokeniserState.AttributeName);
            }
        }
    },
    BeforeAttributeValue {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.i.r(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.AttributeValue_unquoted);
                return;
            }
            if (cE != ' ') {
                if (cE == '\"') {
                    bVar.w(TokeniserState.AttributeValue_doubleQuoted);
                    return;
                }
                if (cE != '`') {
                    if (cE == 65535) {
                        bVar.r(this);
                        bVar.q();
                        bVar.w(TokeniserState.Data);
                        return;
                    }
                    if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r') {
                        return;
                    }
                    if (cE == '&') {
                        nv0Var.M();
                        bVar.w(TokeniserState.AttributeValue_unquoted);
                        return;
                    }
                    if (cE == '\'') {
                        bVar.w(TokeniserState.AttributeValue_singleQuoted);
                        return;
                    }
                    switch (cE) {
                        case '<':
                        case '=':
                            break;
                        case '>':
                            bVar.t(this);
                            bVar.q();
                            bVar.w(TokeniserState.Data);
                            break;
                        default:
                            nv0Var.M();
                            bVar.w(TokeniserState.AttributeValue_unquoted);
                            break;
                    }
                    return;
                }
                bVar.t(this);
                bVar.i.r(cE);
                bVar.w(TokeniserState.AttributeValue_unquoted);
            }
        }
    },
    AttributeValue_doubleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            String strF = nv0Var.f(false);
            if (strF.length() > 0) {
                bVar.i.s(strF);
            } else {
                bVar.i.H();
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.i.r(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == '\"') {
                bVar.w(TokeniserState.AfterAttributeValue_quoted);
                return;
            }
            if (cE != '&') {
                if (cE != 65535) {
                    bVar.i.r(cE);
                    return;
                } else {
                    bVar.r(this);
                    bVar.w(TokeniserState.Data);
                    return;
                }
            }
            int[] iArrD = bVar.d('\"', true);
            if (iArrD != null) {
                bVar.i.t(iArrD);
            } else {
                bVar.i.r('&');
            }
        }
    },
    AttributeValue_singleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            String strF = nv0Var.f(true);
            if (strF.length() > 0) {
                bVar.i.s(strF);
            } else {
                bVar.i.H();
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.i.r(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == 65535) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != '&') {
                if (cE != '\'') {
                    bVar.i.r(cE);
                    return;
                } else {
                    bVar.w(TokeniserState.AfterAttributeValue_quoted);
                    return;
                }
            }
            int[] iArrD = bVar.d('\'', true);
            if (iArrD != null) {
                bVar.i.t(iArrD);
            } else {
                bVar.i.r('&');
            }
        }
    },
    AttributeValue_unquoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            String strQ = nv0Var.q(TokeniserState.attributeValueUnquoted);
            if (strQ.length() > 0) {
                bVar.i.s(strQ);
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.i.r(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE != ' ') {
                if (cE != '\"' && cE != '`') {
                    if (cE == 65535) {
                        bVar.r(this);
                        bVar.w(TokeniserState.Data);
                        return;
                    }
                    if (cE != '\t' && cE != '\n' && cE != '\f' && cE != '\r') {
                        if (cE == '&') {
                            int[] iArrD = bVar.d('>', true);
                            if (iArrD != null) {
                                bVar.i.t(iArrD);
                                return;
                            } else {
                                bVar.i.r('&');
                                return;
                            }
                        }
                        if (cE != '\'') {
                            switch (cE) {
                                case '<':
                                case '=':
                                    break;
                                case '>':
                                    bVar.q();
                                    bVar.w(TokeniserState.Data);
                                    break;
                                default:
                                    bVar.i.r(cE);
                                    break;
                            }
                            return;
                        }
                    }
                }
                bVar.t(this);
                bVar.i.r(cE);
                return;
            }
            bVar.w(TokeniserState.BeforeAttributeName);
        }
    },
    AfterAttributeValue_quoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.BeforeAttributeName);
                return;
            }
            if (cE == '/') {
                bVar.w(TokeniserState.SelfClosingStartTag);
                return;
            }
            if (cE == '>') {
                bVar.q();
                bVar.w(TokeniserState.Data);
            } else if (cE == 65535) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            } else {
                nv0Var.M();
                bVar.t(this);
                bVar.w(TokeniserState.BeforeAttributeName);
            }
        }
    },
    SelfClosingStartTag {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '>') {
                bVar.i.k = true;
                bVar.q();
                bVar.w(TokeniserState.Data);
            } else if (cE == 65535) {
                bVar.r(this);
                bVar.w(TokeniserState.Data);
            } else {
                nv0Var.M();
                bVar.t(this);
                bVar.w(TokeniserState.BeforeAttributeName);
            }
        }
    },
    BogusComment {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            bVar.n.q(nv0Var.n('>'));
            char cT = nv0Var.t();
            if (cT == '>' || cT == 65535) {
                nv0Var.e();
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    MarkupDeclarationOpen {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.x("--")) {
                bVar.f();
                bVar.w(TokeniserState.CommentStart);
            } else {
                if (nv0Var.y("DOCTYPE")) {
                    bVar.w(TokeniserState.Doctype);
                    return;
                }
                if (nv0Var.x("[CDATA[")) {
                    bVar.i();
                    bVar.w(TokeniserState.CdataSection);
                } else {
                    bVar.t(this);
                    bVar.e();
                    bVar.w(TokeniserState.BogusComment);
                }
            }
        }
    },
    CommentStart {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.n.p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.Comment);
                return;
            }
            if (cE == '-') {
                bVar.w(TokeniserState.CommentStartDash);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                nv0Var.M();
                bVar.w(TokeniserState.Comment);
            } else {
                bVar.r(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    CommentStartDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.n.p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.Comment);
                return;
            }
            if (cE == '-') {
                bVar.w(TokeniserState.CommentStartDash);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.n.p(cE);
                bVar.w(TokeniserState.Comment);
            } else {
                bVar.r(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    Comment {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cT = nv0Var.t();
            if (cT == 0) {
                bVar.t(this);
                nv0Var.a();
                bVar.n.p(Utf8.REPLACEMENT_CHARACTER);
            } else if (cT == '-') {
                bVar.a(TokeniserState.CommentEndDash);
            } else {
                if (cT != 65535) {
                    bVar.n.q(nv0Var.p('-', 0));
                    return;
                }
                bVar.r(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    CommentEndDash {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.n.p('-').p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.Comment);
            } else {
                if (cE == '-') {
                    bVar.w(TokeniserState.CommentEnd);
                    return;
                }
                if (cE != 65535) {
                    bVar.n.p('-').p(cE);
                    bVar.w(TokeniserState.Comment);
                } else {
                    bVar.r(this);
                    bVar.o();
                    bVar.w(TokeniserState.Data);
                }
            }
        }
    },
    CommentEnd {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.n.q("--").p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.Comment);
                return;
            }
            if (cE == '!') {
                bVar.t(this);
                bVar.w(TokeniserState.CommentEndBang);
                return;
            }
            if (cE == '-') {
                bVar.t(this);
                bVar.n.p('-');
                return;
            }
            if (cE == '>') {
                bVar.o();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.t(this);
                bVar.n.q("--").p(cE);
                bVar.w(TokeniserState.Comment);
            } else {
                bVar.r(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    CommentEndBang {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.n.q("--!").p(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.Comment);
                return;
            }
            if (cE == '-') {
                bVar.n.q("--!");
                bVar.w(TokeniserState.CommentEndDash);
                return;
            }
            if (cE == '>') {
                bVar.o();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.n.q("--!").p(cE);
                bVar.w(TokeniserState.Comment);
            } else {
                bVar.r(this);
                bVar.o();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    Doctype {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.BeforeDoctypeName);
                return;
            }
            if (cE != '>') {
                if (cE != 65535) {
                    bVar.t(this);
                    bVar.w(TokeniserState.BeforeDoctypeName);
                    return;
                }
                bVar.r(this);
            }
            bVar.t(this);
            bVar.g();
            bVar.m.f = true;
            bVar.p();
            bVar.w(TokeniserState.Data);
        }
    },
    BeforeDoctypeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.D()) {
                bVar.g();
                bVar.w(TokeniserState.DoctypeName);
                return;
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.g();
                bVar.m.b.append(Utf8.REPLACEMENT_CHARACTER);
                bVar.w(TokeniserState.DoctypeName);
                return;
            }
            if (cE != ' ') {
                if (cE == 65535) {
                    bVar.r(this);
                    bVar.g();
                    bVar.m.f = true;
                    bVar.p();
                    bVar.w(TokeniserState.Data);
                    return;
                }
                if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r') {
                    return;
                }
                bVar.g();
                bVar.m.b.append(cE);
                bVar.w(TokeniserState.DoctypeName);
            }
        }
    },
    DoctypeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.G()) {
                bVar.m.b.append(nv0Var.j());
                return;
            }
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.m.b.append(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE != ' ') {
                if (cE == '>') {
                    bVar.p();
                    bVar.w(TokeniserState.Data);
                    return;
                }
                if (cE == 65535) {
                    bVar.r(this);
                    bVar.m.f = true;
                    bVar.p();
                    bVar.w(TokeniserState.Data);
                    return;
                }
                if (cE != '\t' && cE != '\n' && cE != '\f' && cE != '\r') {
                    bVar.m.b.append(cE);
                    return;
                }
            }
            bVar.w(TokeniserState.AfterDoctypeName);
        }
    },
    AfterDoctypeName {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            if (nv0Var.u()) {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (nv0Var.B('\t', '\n', CharUtils.CR, '\f', ' ')) {
                nv0Var.a();
                return;
            }
            if (nv0Var.z('>')) {
                bVar.p();
                bVar.a(TokeniserState.Data);
                return;
            }
            if (nv0Var.y("PUBLIC")) {
                bVar.m.c = "PUBLIC";
                bVar.w(TokeniserState.AfterDoctypePublicKeyword);
            } else if (nv0Var.y("SYSTEM")) {
                bVar.m.c = "SYSTEM";
                bVar.w(TokeniserState.AfterDoctypeSystemKeyword);
            } else {
                bVar.t(this);
                bVar.m.f = true;
                bVar.a(TokeniserState.BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.BeforeDoctypePublicIdentifier);
                return;
            }
            if (cE == '\"') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypePublicIdentifier {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                return;
            }
            if (cE == '\"') {
                bVar.w(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.w(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.m.d.append(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == '\"') {
                bVar.w(TokeniserState.AfterDoctypePublicIdentifier);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.m.d.append(cE);
                return;
            }
            bVar.r(this);
            bVar.m.f = true;
            bVar.p();
            bVar.w(TokeniserState.Data);
        }
    },
    DoctypePublicIdentifier_singleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.m.d.append(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == '\'') {
                bVar.w(TokeniserState.AfterDoctypePublicIdentifier);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.m.d.append(cE);
                return;
            }
            bVar.r(this);
            bVar.m.f = true;
            bVar.p();
            bVar.w(TokeniserState.Data);
        }
    },
    AfterDoctypePublicIdentifier {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.BetweenDoctypePublicAndSystemIdentifiers);
                return;
            }
            if (cE == '\"') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.p();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                return;
            }
            if (cE == '\"') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.p();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    AfterDoctypeSystemKeyword {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(TokeniserState.BeforeDoctypeSystemIdentifier);
                return;
            }
            if (cE == '\"') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.t(this);
                bVar.w(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypeSystemIdentifier {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                return;
            }
            if (cE == '\"') {
                bVar.w(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cE == '\'') {
                bVar.w(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.t(this);
                bVar.m.f = true;
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.m.e.append(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == '\"') {
                bVar.w(TokeniserState.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.m.e.append(cE);
                return;
            }
            bVar.r(this);
            bVar.m.f = true;
            bVar.p();
            bVar.w(TokeniserState.Data);
        }
    },
    DoctypeSystemIdentifier_singleQuoted {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == 0) {
                bVar.t(this);
                bVar.m.e.append(Utf8.REPLACEMENT_CHARACTER);
                return;
            }
            if (cE == '\'') {
                bVar.w(TokeniserState.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cE == '>') {
                bVar.t(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
                return;
            }
            if (cE != 65535) {
                bVar.m.e.append(cE);
                return;
            }
            bVar.r(this);
            bVar.m.f = true;
            bVar.p();
            bVar.w(TokeniserState.Data);
        }
    },
    AfterDoctypeSystemIdentifier {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                return;
            }
            if (cE == '>') {
                bVar.p();
                bVar.w(TokeniserState.Data);
            } else if (cE != 65535) {
                bVar.t(this);
                bVar.w(TokeniserState.BogusDoctype);
            } else {
                bVar.r(this);
                bVar.m.f = true;
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    BogusDoctype {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            char cE = nv0Var.e();
            if (cE == '>') {
                bVar.p();
                bVar.w(TokeniserState.Data);
            } else {
                if (cE != 65535) {
                    return;
                }
                bVar.p();
                bVar.w(TokeniserState.Data);
            }
        }
    },
    CdataSection {
        @Override
        public void read(b bVar, nv0 nv0Var) {
            bVar.h.append(nv0Var.o("]]>"));
            if (nv0Var.x("]]>") || nv0Var.u()) {
                bVar.m(new Token.b(bVar.h.toString()));
                bVar.w(TokeniserState.Data);
            }
        }
    };

    static final char[] attributeNameCharsSorted = {'\t', '\n', '\f', CharUtils.CR, ' ', '\"', '\'', IOUtils.DIR_SEPARATOR_UNIX, '<', '=', '>'};
    static final char[] attributeValueUnquoted = {0, '\t', '\n', '\f', CharUtils.CR, ' ', '\"', '&', '\'', '<', '=', '>', '`'};
    public static final String b = String.valueOf(Utf8.REPLACEMENT_CHARACTER);
    static final char nullChar = 0;

    public static void a(b bVar, nv0 nv0Var, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (nv0Var.G()) {
            String strJ = nv0Var.j();
            bVar.h.append(strJ);
            bVar.k(strJ);
            return;
        }
        char cE = nv0Var.e();
        if (cE != '\t' && cE != '\n' && cE != '\f' && cE != '\r' && cE != ' ' && cE != '/' && cE != '>') {
            nv0Var.M();
            bVar.w(tokeniserState2);
        } else {
            if (bVar.h.toString().equals(StringLookupFactory.KEY_SCRIPT)) {
                bVar.w(tokeniserState);
            } else {
                bVar.w(tokeniserState2);
            }
            bVar.j(cE);
        }
    }

    public static void b(b bVar, nv0 nv0Var, TokeniserState tokeniserState) {
        if (nv0Var.G()) {
            String strJ = nv0Var.j();
            bVar.i.v(strJ);
            bVar.h.append(strJ);
            return;
        }
        if (bVar.u() && !nv0Var.u()) {
            char cE = nv0Var.e();
            if (cE == '\t' || cE == '\n' || cE == '\f' || cE == '\r' || cE == ' ') {
                bVar.w(BeforeAttributeName);
                return;
            }
            if (cE == '/') {
                bVar.w(SelfClosingStartTag);
                return;
            } else {
                if (cE == '>') {
                    bVar.q();
                    bVar.w(Data);
                    return;
                }
                bVar.h.append(cE);
            }
        }
        bVar.k("</");
        bVar.l(bVar.h);
        bVar.w(tokeniserState);
    }

    public static void d(b bVar, TokeniserState tokeniserState) {
        int[] iArrD = bVar.d(null, false);
        if (iArrD == null) {
            bVar.j('&');
        } else {
            bVar.n(iArrD);
        }
        bVar.w(tokeniserState);
    }

    public static void e(b bVar, nv0 nv0Var, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (nv0Var.D()) {
            bVar.h(false);
            bVar.w(tokeniserState);
        } else {
            bVar.k("</");
            bVar.w(tokeniserState2);
        }
    }

    public static void f(b bVar, nv0 nv0Var, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char cT = nv0Var.t();
        if (cT == 0) {
            bVar.t(tokeniserState);
            nv0Var.a();
            bVar.j(Utf8.REPLACEMENT_CHARACTER);
        } else if (cT == '<') {
            bVar.a(tokeniserState2);
        } else if (cT != 65535) {
            bVar.k(nv0Var.l());
        } else {
            bVar.m(new Token.f());
        }
    }

    public abstract void read(b bVar, nv0 nv0Var);
}
