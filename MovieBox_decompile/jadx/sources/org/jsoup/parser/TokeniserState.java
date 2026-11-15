package org.jsoup.parser;

enum TokeniserState {
    Data {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                hVar.i(aVar.d());
            } else {
                if (cQ == '&') {
                    hVar.a(TokeniserState.CharacterReferenceInData);
                    return;
                }
                if (cQ == '<') {
                    hVar.a(TokeniserState.TagOpen);
                } else if (cQ != 65535) {
                    hVar.j(aVar.e());
                } else {
                    hVar.k(new Token.f());
                }
            }
        }
    },
    CharacterReferenceInData {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readCharRef(hVar, TokeniserState.Data);
        }
    },
    Rcdata {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                aVar.a();
                hVar.i((char) 65533);
            } else {
                if (cQ == '&') {
                    hVar.a(TokeniserState.CharacterReferenceInRcdata);
                    return;
                }
                if (cQ == '<') {
                    hVar.a(TokeniserState.RcdataLessthanSign);
                } else if (cQ != 65535) {
                    hVar.j(aVar.m('&', '<', TokeniserState.nullChar));
                } else {
                    hVar.k(new Token.f());
                }
            }
        }
    },
    CharacterReferenceInRcdata {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readCharRef(hVar, TokeniserState.Rcdata);
        }
    },
    Rawtext {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readData(hVar, aVar, this, TokeniserState.RawtextLessthanSign);
        }
    },
    ScriptData {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readData(hVar, aVar, this, TokeniserState.ScriptDataLessthanSign);
        }
    },
    PLAINTEXT {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                aVar.a();
                hVar.i((char) 65533);
            } else if (cQ != 65535) {
                hVar.j(aVar.k(TokeniserState.nullChar));
            } else {
                hVar.k(new Token.f());
            }
        }
    },
    TagOpen {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == '!') {
                hVar.a(TokeniserState.MarkupDeclarationOpen);
                return;
            }
            if (cQ == '/') {
                hVar.a(TokeniserState.EndTagOpen);
                return;
            }
            if (cQ == '?') {
                hVar.a(TokeniserState.BogusComment);
                return;
            }
            if (aVar.C()) {
                hVar.g(true);
                hVar.u(TokeniserState.TagName);
            } else {
                hVar.r(this);
                hVar.i('<');
                hVar.u(TokeniserState.Data);
            }
        }
    },
    EndTagOpen {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.r()) {
                hVar.p(this);
                hVar.j("</");
                hVar.u(TokeniserState.Data);
            } else if (aVar.C()) {
                hVar.g(false);
                hVar.u(TokeniserState.TagName);
            } else if (aVar.w('>')) {
                hVar.r(this);
                hVar.a(TokeniserState.Data);
            } else {
                hVar.r(this);
                hVar.a(TokeniserState.BogusComment);
            }
        }
    },
    TagName {
        @Override
        void read(h hVar, a aVar) {
            hVar.f68707i.v(aVar.j());
            char cD = aVar.d();
            if (cD == 0) {
                hVar.f68707i.v(TokeniserState.replacementStr);
                return;
            }
            if (cD != ' ') {
                if (cD == '/') {
                    hVar.u(TokeniserState.SelfClosingStartTag);
                    return;
                }
                if (cD == '>') {
                    hVar.o();
                    hVar.u(TokeniserState.Data);
                    return;
                } else if (cD == 65535) {
                    hVar.p(this);
                    hVar.u(TokeniserState.Data);
                    return;
                } else if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                    hVar.f68707i.u(cD);
                    return;
                }
            }
            hVar.u(TokeniserState.BeforeAttributeName);
        }
    },
    RcdataLessthanSign {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.w('/')) {
                hVar.h();
                hVar.a(TokeniserState.RCDATAEndTagOpen);
                return;
            }
            if (aVar.C() && hVar.b() != null) {
                if (!aVar.p("</" + hVar.b())) {
                    hVar.f68707i = hVar.g(false).B(hVar.b());
                    hVar.o();
                    aVar.I();
                    hVar.u(TokeniserState.Data);
                    return;
                }
            }
            hVar.j("<");
            hVar.u(TokeniserState.Rcdata);
        }
    },
    RCDATAEndTagOpen {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.C()) {
                hVar.j("</");
                hVar.u(TokeniserState.Rcdata);
            } else {
                hVar.g(false);
                hVar.f68707i.u(aVar.q());
                hVar.f68706h.append(aVar.q());
                hVar.a(TokeniserState.RCDATAEndTagName);
            }
        }
    },
    RCDATAEndTagName {
        private void anythingElse(h hVar, a aVar) {
            hVar.j("</" + hVar.f68706h.toString());
            aVar.I();
            hVar.u(TokeniserState.Rcdata);
        }

        @Override
        void read(h hVar, a aVar) {
            if (aVar.C()) {
                String strH = aVar.h();
                hVar.f68707i.v(strH);
                hVar.f68706h.append(strH);
                return;
            }
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                if (hVar.s()) {
                    hVar.u(TokeniserState.BeforeAttributeName);
                    return;
                } else {
                    anythingElse(hVar, aVar);
                    return;
                }
            }
            if (cD == '/') {
                if (hVar.s()) {
                    hVar.u(TokeniserState.SelfClosingStartTag);
                    return;
                } else {
                    anythingElse(hVar, aVar);
                    return;
                }
            }
            if (cD != '>') {
                anythingElse(hVar, aVar);
            } else if (!hVar.s()) {
                anythingElse(hVar, aVar);
            } else {
                hVar.o();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    RawtextLessthanSign {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.w('/')) {
                hVar.h();
                hVar.a(TokeniserState.RawtextEndTagOpen);
            } else {
                hVar.i('<');
                hVar.u(TokeniserState.Rawtext);
            }
        }
    },
    RawtextEndTagOpen {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readEndTag(hVar, aVar, TokeniserState.RawtextEndTagName, TokeniserState.Rawtext);
        }
    },
    RawtextEndTagName {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.handleDataEndTag(hVar, aVar, TokeniserState.Rawtext);
        }
    },
    ScriptDataLessthanSign {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '!') {
                hVar.j("<!");
                hVar.u(TokeniserState.ScriptDataEscapeStart);
            } else if (cD == '/') {
                hVar.h();
                hVar.u(TokeniserState.ScriptDataEndTagOpen);
            } else {
                hVar.j("<");
                aVar.I();
                hVar.u(TokeniserState.ScriptData);
            }
        }
    },
    ScriptDataEndTagOpen {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.readEndTag(hVar, aVar, TokeniserState.ScriptDataEndTagName, TokeniserState.ScriptData);
        }
    },
    ScriptDataEndTagName {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.handleDataEndTag(hVar, aVar, TokeniserState.ScriptData);
        }
    },
    ScriptDataEscapeStart {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.w('-')) {
                hVar.u(TokeniserState.ScriptData);
            } else {
                hVar.i('-');
                hVar.a(TokeniserState.ScriptDataEscapeStartDash);
            }
        }
    },
    ScriptDataEscapeStartDash {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.w('-')) {
                hVar.u(TokeniserState.ScriptData);
            } else {
                hVar.i('-');
                hVar.a(TokeniserState.ScriptDataEscapedDashDash);
            }
        }
    },
    ScriptDataEscaped {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.r()) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
                return;
            }
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                aVar.a();
                hVar.i((char) 65533);
            } else if (cQ == '-') {
                hVar.i('-');
                hVar.a(TokeniserState.ScriptDataEscapedDash);
            } else if (cQ != '<') {
                hVar.j(aVar.m('-', '<', TokeniserState.nullChar));
            } else {
                hVar.a(TokeniserState.ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.r()) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
                return;
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.i((char) 65533);
                hVar.u(TokeniserState.ScriptDataEscaped);
            } else if (cD == '-') {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataEscapedDashDash);
            } else if (cD == '<') {
                hVar.u(TokeniserState.ScriptDataEscapedLessthanSign);
            } else {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedDashDash {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.r()) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
                return;
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.i((char) 65533);
                hVar.u(TokeniserState.ScriptDataEscaped);
            } else {
                if (cD == '-') {
                    hVar.i(cD);
                    return;
                }
                if (cD == '<') {
                    hVar.u(TokeniserState.ScriptDataEscapedLessthanSign);
                } else if (cD != '>') {
                    hVar.i(cD);
                    hVar.u(TokeniserState.ScriptDataEscaped);
                } else {
                    hVar.i(cD);
                    hVar.u(TokeniserState.ScriptData);
                }
            }
        }
    },
    ScriptDataEscapedLessthanSign {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.C()) {
                if (aVar.w('/')) {
                    hVar.h();
                    hVar.a(TokeniserState.ScriptDataEscapedEndTagOpen);
                    return;
                } else {
                    hVar.i('<');
                    hVar.u(TokeniserState.ScriptDataEscaped);
                    return;
                }
            }
            hVar.h();
            hVar.f68706h.append(aVar.q());
            hVar.j("<" + aVar.q());
            hVar.a(TokeniserState.ScriptDataDoubleEscapeStart);
        }
    },
    ScriptDataEscapedEndTagOpen {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.C()) {
                hVar.j("</");
                hVar.u(TokeniserState.ScriptDataEscaped);
            } else {
                hVar.g(false);
                hVar.f68707i.u(aVar.q());
                hVar.f68706h.append(aVar.q());
                hVar.a(TokeniserState.ScriptDataEscapedEndTagName);
            }
        }
    },
    ScriptDataEscapedEndTagName {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.handleDataEndTag(hVar, aVar, TokeniserState.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.handleDataDoubleEscapeTag(hVar, aVar, TokeniserState.ScriptDataDoubleEscaped, TokeniserState.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                aVar.a();
                hVar.i((char) 65533);
            } else if (cQ == '-') {
                hVar.i(cQ);
                hVar.a(TokeniserState.ScriptDataDoubleEscapedDash);
            } else if (cQ == '<') {
                hVar.i(cQ);
                hVar.a(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cQ != 65535) {
                hVar.j(aVar.m('-', '<', TokeniserState.nullChar));
            } else {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDash {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.i((char) 65533);
                hVar.u(TokeniserState.ScriptDataDoubleEscaped);
            } else if (cD == '-') {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataDoubleEscapedDashDash);
            } else if (cD == '<') {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cD != 65535) {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.i((char) 65533);
                hVar.u(TokeniserState.ScriptDataDoubleEscaped);
                return;
            }
            if (cD == '-') {
                hVar.i(cD);
                return;
            }
            if (cD == '<') {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (cD == '>') {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptData);
            } else if (cD != 65535) {
                hVar.i(cD);
                hVar.u(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign {
        @Override
        void read(h hVar, a aVar) {
            if (!aVar.w('/')) {
                hVar.u(TokeniserState.ScriptDataDoubleEscaped);
                return;
            }
            hVar.i('/');
            hVar.h();
            hVar.a(TokeniserState.ScriptDataDoubleEscapeEnd);
        }
    },
    ScriptDataDoubleEscapeEnd {
        @Override
        void read(h hVar, a aVar) {
            TokeniserState.handleDataDoubleEscapeTag(hVar, aVar, TokeniserState.ScriptDataEscaped, TokeniserState.ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.C();
                aVar.I();
                hVar.u(TokeniserState.AttributeName);
                return;
            }
            if (cD != ' ') {
                if (cD != '\"' && cD != '\'') {
                    if (cD == '/') {
                        hVar.u(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (cD == 65535) {
                        hVar.p(this);
                        hVar.u(TokeniserState.Data);
                        return;
                    }
                    if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r') {
                        return;
                    }
                    switch (cD) {
                        case '<':
                        case '=':
                            break;
                        case '>':
                            hVar.o();
                            hVar.u(TokeniserState.Data);
                            break;
                        default:
                            hVar.f68707i.C();
                            aVar.I();
                            hVar.u(TokeniserState.AttributeName);
                            break;
                    }
                    return;
                }
                hVar.r(this);
                hVar.f68707i.C();
                hVar.f68707i.p(cD);
                hVar.u(TokeniserState.AttributeName);
            }
        }
    },
    AttributeName {
        @Override
        void read(h hVar, a aVar) {
            hVar.f68707i.q(aVar.n(TokeniserState.attributeNameCharsSorted));
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.p((char) 65533);
                return;
            }
            if (cD != ' ') {
                if (cD != '\"' && cD != '\'') {
                    if (cD == '/') {
                        hVar.u(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (cD == 65535) {
                        hVar.p(this);
                        hVar.u(TokeniserState.Data);
                        return;
                    }
                    if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                        switch (cD) {
                            case '<':
                                break;
                            case '=':
                                hVar.u(TokeniserState.BeforeAttributeValue);
                                break;
                            case '>':
                                hVar.o();
                                hVar.u(TokeniserState.Data);
                                break;
                            default:
                                hVar.f68707i.p(cD);
                                break;
                        }
                        return;
                    }
                }
                hVar.r(this);
                hVar.f68707i.p(cD);
                return;
            }
            hVar.u(TokeniserState.AfterAttributeName);
        }
    },
    AfterAttributeName {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.p((char) 65533);
                hVar.u(TokeniserState.AttributeName);
                return;
            }
            if (cD != ' ') {
                if (cD != '\"' && cD != '\'') {
                    if (cD == '/') {
                        hVar.u(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (cD == 65535) {
                        hVar.p(this);
                        hVar.u(TokeniserState.Data);
                        return;
                    }
                    if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r') {
                        return;
                    }
                    switch (cD) {
                        case '<':
                            break;
                        case '=':
                            hVar.u(TokeniserState.BeforeAttributeValue);
                            break;
                        case '>':
                            hVar.o();
                            hVar.u(TokeniserState.Data);
                            break;
                        default:
                            hVar.f68707i.C();
                            aVar.I();
                            hVar.u(TokeniserState.AttributeName);
                            break;
                    }
                    return;
                }
                hVar.r(this);
                hVar.f68707i.C();
                hVar.f68707i.p(cD);
                hVar.u(TokeniserState.AttributeName);
            }
        }
    },
    BeforeAttributeValue {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.r((char) 65533);
                hVar.u(TokeniserState.AttributeValue_unquoted);
                return;
            }
            if (cD != ' ') {
                if (cD == '\"') {
                    hVar.u(TokeniserState.AttributeValue_doubleQuoted);
                    return;
                }
                if (cD != '`') {
                    if (cD == 65535) {
                        hVar.p(this);
                        hVar.o();
                        hVar.u(TokeniserState.Data);
                        return;
                    }
                    if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r') {
                        return;
                    }
                    if (cD == '&') {
                        aVar.I();
                        hVar.u(TokeniserState.AttributeValue_unquoted);
                        return;
                    }
                    if (cD == '\'') {
                        hVar.u(TokeniserState.AttributeValue_singleQuoted);
                        return;
                    }
                    switch (cD) {
                        case '<':
                        case '=':
                            break;
                        case '>':
                            hVar.r(this);
                            hVar.o();
                            hVar.u(TokeniserState.Data);
                            break;
                        default:
                            aVar.I();
                            hVar.u(TokeniserState.AttributeValue_unquoted);
                            break;
                    }
                    return;
                }
                hVar.r(this);
                hVar.f68707i.r(cD);
                hVar.u(TokeniserState.AttributeValue_unquoted);
            }
        }
    },
    AttributeValue_doubleQuoted {
        @Override
        void read(h hVar, a aVar) {
            String strM = aVar.m(TokeniserState.attributeDoubleValueCharsSorted);
            if (strM.length() > 0) {
                hVar.f68707i.s(strM);
            } else {
                hVar.f68707i.F();
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.r((char) 65533);
                return;
            }
            if (cD == '\"') {
                hVar.u(TokeniserState.AfterAttributeValue_quoted);
                return;
            }
            if (cD != '&') {
                if (cD != 65535) {
                    hVar.f68707i.r(cD);
                    return;
                } else {
                    hVar.p(this);
                    hVar.u(TokeniserState.Data);
                    return;
                }
            }
            int[] iArrD = hVar.d('\"', true);
            if (iArrD != null) {
                hVar.f68707i.t(iArrD);
            } else {
                hVar.f68707i.r('&');
            }
        }
    },
    AttributeValue_singleQuoted {
        @Override
        void read(h hVar, a aVar) {
            String strM = aVar.m(TokeniserState.attributeSingleValueCharsSorted);
            if (strM.length() > 0) {
                hVar.f68707i.s(strM);
            } else {
                hVar.f68707i.F();
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.r((char) 65533);
                return;
            }
            if (cD == 65535) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != '&') {
                if (cD != '\'') {
                    hVar.f68707i.r(cD);
                    return;
                } else {
                    hVar.u(TokeniserState.AfterAttributeValue_quoted);
                    return;
                }
            }
            int[] iArrD = hVar.d('\'', true);
            if (iArrD != null) {
                hVar.f68707i.t(iArrD);
            } else {
                hVar.f68707i.r('&');
            }
        }
    },
    AttributeValue_unquoted {
        @Override
        void read(h hVar, a aVar) {
            String strN = aVar.n(TokeniserState.attributeValueUnquoted);
            if (strN.length() > 0) {
                hVar.f68707i.s(strN);
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68707i.r((char) 65533);
                return;
            }
            if (cD != ' ') {
                if (cD != '\"' && cD != '`') {
                    if (cD == 65535) {
                        hVar.p(this);
                        hVar.u(TokeniserState.Data);
                        return;
                    }
                    if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                        if (cD == '&') {
                            int[] iArrD = hVar.d('>', true);
                            if (iArrD != null) {
                                hVar.f68707i.t(iArrD);
                                return;
                            } else {
                                hVar.f68707i.r('&');
                                return;
                            }
                        }
                        if (cD != '\'') {
                            switch (cD) {
                                case '<':
                                case '=':
                                    break;
                                case '>':
                                    hVar.o();
                                    hVar.u(TokeniserState.Data);
                                    break;
                                default:
                                    hVar.f68707i.r(cD);
                                    break;
                            }
                            return;
                        }
                    }
                }
                hVar.r(this);
                hVar.f68707i.r(cD);
                return;
            }
            hVar.u(TokeniserState.BeforeAttributeName);
        }
    },
    AfterAttributeValue_quoted {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(TokeniserState.BeforeAttributeName);
                return;
            }
            if (cD == '/') {
                hVar.u(TokeniserState.SelfClosingStartTag);
                return;
            }
            if (cD == '>') {
                hVar.o();
                hVar.u(TokeniserState.Data);
            } else if (cD == 65535) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
            } else {
                hVar.r(this);
                aVar.I();
                hVar.u(TokeniserState.BeforeAttributeName);
            }
        }
    },
    SelfClosingStartTag {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '>') {
                hVar.f68707i.f68642i = true;
                hVar.o();
                hVar.u(TokeniserState.Data);
            } else if (cD == 65535) {
                hVar.p(this);
                hVar.u(TokeniserState.Data);
            } else {
                hVar.r(this);
                aVar.I();
                hVar.u(TokeniserState.BeforeAttributeName);
            }
        }
    },
    BogusComment {
        @Override
        void read(h hVar, a aVar) {
            aVar.I();
            Token.d dVar = new Token.d();
            dVar.f68629c = true;
            dVar.f68628b.append(aVar.k('>'));
            hVar.k(dVar);
            hVar.a(TokeniserState.Data);
        }
    },
    MarkupDeclarationOpen {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.u("--")) {
                hVar.e();
                hVar.u(TokeniserState.CommentStart);
            } else if (aVar.v("DOCTYPE")) {
                hVar.u(TokeniserState.Doctype);
            } else if (aVar.u("[CDATA[")) {
                hVar.h();
                hVar.u(TokeniserState.CdataSection);
            } else {
                hVar.r(this);
                hVar.a(TokeniserState.BogusComment);
            }
        }
    },
    CommentStart {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68712n.f68628b.append((char) 65533);
                hVar.u(TokeniserState.Comment);
                return;
            }
            if (cD == '-') {
                hVar.u(TokeniserState.CommentStartDash);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else if (cD != 65535) {
                hVar.f68712n.f68628b.append(cD);
                hVar.u(TokeniserState.Comment);
            } else {
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    CommentStartDash {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68712n.f68628b.append((char) 65533);
                hVar.u(TokeniserState.Comment);
                return;
            }
            if (cD == '-') {
                hVar.u(TokeniserState.CommentStartDash);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else if (cD != 65535) {
                hVar.f68712n.f68628b.append(cD);
                hVar.u(TokeniserState.Comment);
            } else {
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    Comment {
        @Override
        void read(h hVar, a aVar) {
            char cQ = aVar.q();
            if (cQ == 0) {
                hVar.r(this);
                aVar.a();
                hVar.f68712n.f68628b.append((char) 65533);
            } else if (cQ == '-') {
                hVar.a(TokeniserState.CommentEndDash);
            } else {
                if (cQ != 65535) {
                    hVar.f68712n.f68628b.append(aVar.m('-', TokeniserState.nullChar));
                    return;
                }
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    CommentEndDash {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                StringBuilder sb2 = hVar.f68712n.f68628b;
                sb2.append('-');
                sb2.append((char) 65533);
                hVar.u(TokeniserState.Comment);
                return;
            }
            if (cD == '-') {
                hVar.u(TokeniserState.CommentEnd);
                return;
            }
            if (cD == 65535) {
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else {
                StringBuilder sb3 = hVar.f68712n.f68628b;
                sb3.append('-');
                sb3.append(cD);
                hVar.u(TokeniserState.Comment);
            }
        }
    },
    CommentEnd {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                StringBuilder sb2 = hVar.f68712n.f68628b;
                sb2.append("--");
                sb2.append((char) 65533);
                hVar.u(TokeniserState.Comment);
                return;
            }
            if (cD == '!') {
                hVar.r(this);
                hVar.u(TokeniserState.CommentEndBang);
                return;
            }
            if (cD == '-') {
                hVar.r(this);
                hVar.f68712n.f68628b.append('-');
                return;
            }
            if (cD == '>') {
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else if (cD == 65535) {
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else {
                hVar.r(this);
                StringBuilder sb3 = hVar.f68712n.f68628b;
                sb3.append("--");
                sb3.append(cD);
                hVar.u(TokeniserState.Comment);
            }
        }
    },
    CommentEndBang {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                StringBuilder sb2 = hVar.f68712n.f68628b;
                sb2.append("--!");
                sb2.append((char) 65533);
                hVar.u(TokeniserState.Comment);
                return;
            }
            if (cD == '-') {
                hVar.f68712n.f68628b.append("--!");
                hVar.u(TokeniserState.CommentEndDash);
                return;
            }
            if (cD == '>') {
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else if (cD == 65535) {
                hVar.p(this);
                hVar.m();
                hVar.u(TokeniserState.Data);
            } else {
                StringBuilder sb3 = hVar.f68712n.f68628b;
                sb3.append("--!");
                sb3.append(cD);
                hVar.u(TokeniserState.Comment);
            }
        }
    },
    Doctype {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(TokeniserState.BeforeDoctypeName);
                return;
            }
            if (cD != '>') {
                if (cD != 65535) {
                    hVar.r(this);
                    hVar.u(TokeniserState.BeforeDoctypeName);
                    return;
                }
                hVar.p(this);
            }
            hVar.r(this);
            hVar.f();
            hVar.f68711m.f68634f = true;
            hVar.n();
            hVar.u(TokeniserState.Data);
        }
    },
    BeforeDoctypeName {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.C()) {
                hVar.f();
                hVar.u(TokeniserState.DoctypeName);
                return;
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f();
                hVar.f68711m.f68630b.append((char) 65533);
                hVar.u(TokeniserState.DoctypeName);
                return;
            }
            if (cD != ' ') {
                if (cD == 65535) {
                    hVar.p(this);
                    hVar.f();
                    hVar.f68711m.f68634f = true;
                    hVar.n();
                    hVar.u(TokeniserState.Data);
                    return;
                }
                if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r') {
                    return;
                }
                hVar.f();
                hVar.f68711m.f68630b.append(cD);
                hVar.u(TokeniserState.DoctypeName);
            }
        }
    },
    DoctypeName {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.C()) {
                hVar.f68711m.f68630b.append(aVar.h());
                return;
            }
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68711m.f68630b.append((char) 65533);
                return;
            }
            if (cD != ' ') {
                if (cD == '>') {
                    hVar.n();
                    hVar.u(TokeniserState.Data);
                    return;
                }
                if (cD == 65535) {
                    hVar.p(this);
                    hVar.f68711m.f68634f = true;
                    hVar.n();
                    hVar.u(TokeniserState.Data);
                    return;
                }
                if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r') {
                    hVar.f68711m.f68630b.append(cD);
                    return;
                }
            }
            hVar.u(TokeniserState.AfterDoctypeName);
        }
    },
    AfterDoctypeName {
        @Override
        void read(h hVar, a aVar) {
            if (aVar.r()) {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (aVar.y('\t', '\n', '\r', '\f', ' ')) {
                aVar.a();
                return;
            }
            if (aVar.w('>')) {
                hVar.n();
                hVar.a(TokeniserState.Data);
                return;
            }
            if (aVar.v("PUBLIC")) {
                hVar.f68711m.f68631c = "PUBLIC";
                hVar.u(TokeniserState.AfterDoctypePublicKeyword);
            } else if (aVar.v(com.transsion.usercenter.message.adapter.a.I)) {
                hVar.f68711m.f68631c = com.transsion.usercenter.message.adapter.a.I;
                hVar.u(TokeniserState.AfterDoctypeSystemKeyword);
            } else {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.a(TokeniserState.BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(TokeniserState.BeforeDoctypePublicIdentifier);
                return;
            }
            if (cD == '\"') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypePublicIdentifier {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                return;
            }
            if (cD == '\"') {
                hVar.u(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.u(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68711m.f68632d.append((char) 65533);
                return;
            }
            if (cD == '\"') {
                hVar.u(TokeniserState.AfterDoctypePublicIdentifier);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.f68711m.f68632d.append(cD);
                return;
            }
            hVar.p(this);
            hVar.f68711m.f68634f = true;
            hVar.n();
            hVar.u(TokeniserState.Data);
        }
    },
    DoctypePublicIdentifier_singleQuoted {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68711m.f68632d.append((char) 65533);
                return;
            }
            if (cD == '\'') {
                hVar.u(TokeniserState.AfterDoctypePublicIdentifier);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.f68711m.f68632d.append(cD);
                return;
            }
            hVar.p(this);
            hVar.f68711m.f68634f = true;
            hVar.n();
            hVar.u(TokeniserState.Data);
        }
    },
    AfterDoctypePublicIdentifier {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(TokeniserState.BetweenDoctypePublicAndSystemIdentifiers);
                return;
            }
            if (cD == '\"') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.n();
                hVar.u(TokeniserState.Data);
            } else if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                return;
            }
            if (cD == '\"') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.n();
                hVar.u(TokeniserState.Data);
            } else if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    AfterDoctypeSystemKeyword {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(TokeniserState.BeforeDoctypeSystemIdentifier);
                return;
            }
            if (cD == '\"') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.r(this);
                hVar.u(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypeSystemIdentifier {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                return;
            }
            if (cD == '\"') {
                hVar.u(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cD == '\'') {
                hVar.u(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68711m.f68633e.append((char) 65533);
                return;
            }
            if (cD == '\"') {
                hVar.u(TokeniserState.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.f68711m.f68633e.append(cD);
                return;
            }
            hVar.p(this);
            hVar.f68711m.f68634f = true;
            hVar.n();
            hVar.u(TokeniserState.Data);
        }
    },
    DoctypeSystemIdentifier_singleQuoted {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == 0) {
                hVar.r(this);
                hVar.f68711m.f68633e.append((char) 65533);
                return;
            }
            if (cD == '\'') {
                hVar.u(TokeniserState.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cD == '>') {
                hVar.r(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
                return;
            }
            if (cD != 65535) {
                hVar.f68711m.f68633e.append(cD);
                return;
            }
            hVar.p(this);
            hVar.f68711m.f68634f = true;
            hVar.n();
            hVar.u(TokeniserState.Data);
        }
    },
    AfterDoctypeSystemIdentifier {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                return;
            }
            if (cD == '>') {
                hVar.n();
                hVar.u(TokeniserState.Data);
            } else if (cD != 65535) {
                hVar.r(this);
                hVar.u(TokeniserState.BogusDoctype);
            } else {
                hVar.p(this);
                hVar.f68711m.f68634f = true;
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    BogusDoctype {
        @Override
        void read(h hVar, a aVar) {
            char cD = aVar.d();
            if (cD == '>') {
                hVar.n();
                hVar.u(TokeniserState.Data);
            } else {
                if (cD != 65535) {
                    return;
                }
                hVar.n();
                hVar.u(TokeniserState.Data);
            }
        }
    },
    CdataSection {
        @Override
        void read(h hVar, a aVar) {
            hVar.f68706h.append(aVar.l("]]>"));
            if (aVar.u("]]>") || aVar.r()) {
                hVar.k(new Token.b(hVar.f68706h.toString()));
                hVar.u(TokeniserState.Data);
            }
        }
    };

    private static final char eof = 65535;
    private static final char replacementChar = 65533;
    static final char nullChar = 0;
    static final char[] attributeSingleValueCharsSorted = {nullChar, '&', '\''};
    static final char[] attributeDoubleValueCharsSorted = {nullChar, '\"', '&'};
    static final char[] attributeNameCharsSorted = {nullChar, '\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>'};
    static final char[] attributeValueUnquoted = {nullChar, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
    private static final String replacementStr = String.valueOf((char) 65533);

    public static void handleDataDoubleEscapeTag(h hVar, a aVar, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (aVar.C()) {
            String strH = aVar.h();
            hVar.f68706h.append(strH);
            hVar.j(strH);
            return;
        }
        char cD = aVar.d();
        if (cD != '\t' && cD != '\n' && cD != '\f' && cD != '\r' && cD != ' ' && cD != '/' && cD != '>') {
            aVar.I();
            hVar.u(tokeniserState2);
        } else {
            if (hVar.f68706h.toString().equals("script")) {
                hVar.u(tokeniserState);
            } else {
                hVar.u(tokeniserState2);
            }
            hVar.i(cD);
        }
    }

    public static void handleDataEndTag(h hVar, a aVar, TokeniserState tokeniserState) {
        if (aVar.C()) {
            String strH = aVar.h();
            hVar.f68707i.v(strH);
            hVar.f68706h.append(strH);
            return;
        }
        if (hVar.s() && !aVar.r()) {
            char cD = aVar.d();
            if (cD == '\t' || cD == '\n' || cD == '\f' || cD == '\r' || cD == ' ') {
                hVar.u(BeforeAttributeName);
                return;
            }
            if (cD == '/') {
                hVar.u(SelfClosingStartTag);
                return;
            } else {
                if (cD == '>') {
                    hVar.o();
                    hVar.u(Data);
                    return;
                }
                hVar.f68706h.append(cD);
            }
        }
        hVar.j("</" + hVar.f68706h.toString());
        hVar.u(tokeniserState);
    }

    public static void readCharRef(h hVar, TokeniserState tokeniserState) {
        int[] iArrD = hVar.d(null, false);
        if (iArrD == null) {
            hVar.i('&');
        } else {
            hVar.l(iArrD);
        }
        hVar.u(tokeniserState);
    }

    public static void readData(h hVar, a aVar, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char cQ = aVar.q();
        if (cQ == 0) {
            hVar.r(tokeniserState);
            aVar.a();
            hVar.i((char) 65533);
        } else if (cQ == '<') {
            hVar.a(tokeniserState2);
        } else if (cQ != 65535) {
            hVar.j(aVar.m('<', nullChar));
        } else {
            hVar.k(new Token.f());
        }
    }

    public static void readEndTag(h hVar, a aVar, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (aVar.C()) {
            hVar.g(false);
            hVar.u(tokeniserState);
        } else {
            hVar.j("</");
            hVar.u(tokeniserState2);
        }
    }

    abstract void read(h hVar, a aVar);
}
