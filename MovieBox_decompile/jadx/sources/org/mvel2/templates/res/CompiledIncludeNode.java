package org.mvel2.templates.res;

import f00.b;
import g00.c;
import g00.d;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;

public class CompiledIncludeNode extends Node {
    private CompiledTemplate cFileCache;
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;
    private ParserContext context;
    private long fileDateStamp;

    public CompiledIncludeNode(int i10, String str, char[] cArr, int i11, int i12, ParserContext parserContext) {
        this.begin = i10;
        this.name = str;
        this.contents = cArr;
        this.cStart = i11;
        this.cEnd = i12 - 1;
        this.end = i12;
        this.context = parserContext;
        int iA = d.a(cArr, i11);
        char[] cArr2 = this.contents;
        int i13 = this.cStart;
        this.cIncludeExpression = org.mvel2.d.e(cArr2, i13, iA - i13, parserContext);
        char[] cArr3 = this.contents;
        if (iA != cArr3.length) {
            int i14 = iA + 1;
            this.cPreExpression = org.mvel2.d.e(cArr3, i14, this.cEnd - i14, parserContext);
        }
    }

    private static FileInputStream openInputStream(File file) throws IOException {
        if (file == null) {
            throw new FileNotFoundException("file parameter is null");
        }
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    private String readFile(f00.d dVar, String str, Object obj, VariableResolverFactory variableResolverFactory) {
        File file = new File(String.valueOf(dVar.i().k()) + "/" + str);
        long j10 = this.fileDateStamp;
        if (j10 == 0 || j10 != file.lastModified()) {
            this.fileDateStamp = file.lastModified();
            this.cFileCache = b.g(readInFile(dVar, file), this.context);
        }
        return String.valueOf(f00.d.e(this.cFileCache, obj, variableResolverFactory));
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String readInFile(f00.d dVar, File file) throws Throwable {
        FileInputStream fileInputStreamOpenInputStream;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStreamOpenInputStream = openInputStream(file);
                try {
                    dVar.i().q(file.getParent());
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStreamOpenInputStream, "UTF-8"));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                        } catch (FileNotFoundException unused) {
                            throw new TemplateError("cannot include template '" + file.getPath() + "': file not found.");
                        } catch (IOException e10) {
                            e = e10;
                            throw new TemplateError("unknown I/O exception while including '" + file.getPath() + "' (stacktrace nested)", e);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                    throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                                }
                            }
                            if (fileInputStreamOpenInputStream != null) {
                                try {
                                    fileInputStreamOpenInputStream.close();
                                } catch (IOException unused3) {
                                    throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                                }
                            }
                            throw th;
                        }
                    }
                    dVar.i().n();
                    String string = sb2.toString();
                    try {
                        bufferedReader2.close();
                        if (fileInputStreamOpenInputStream != null) {
                            try {
                                fileInputStreamOpenInputStream.close();
                            } catch (IOException unused4) {
                                throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                            }
                        }
                        return string;
                    } catch (IOException unused5) {
                        throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                    }
                } catch (FileNotFoundException unused6) {
                } catch (IOException e11) {
                    e = e11;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (fileInputStreamOpenInputStream != null) {
                        fileInputStreamOpenInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStreamOpenInputStream = null;
            }
        } catch (FileNotFoundException unused7) {
        } catch (IOException e12) {
            e = e12;
        } catch (Throwable th5) {
            th = th5;
            fileInputStreamOpenInputStream = null;
        }
    }

    @Override
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    @Override
    public Object eval(f00.d dVar, c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        String str = (String) org.mvel2.d.s(this.cIncludeExpression, obj, variableResolverFactory, String.class);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            org.mvel2.d.r(serializable, obj, variableResolverFactory);
        }
        Node node = this.next;
        return node != null ? node.eval(dVar, cVar.append(String.valueOf(f00.d.a(readFile(dVar, str, obj, variableResolverFactory), obj, variableResolverFactory))), obj, variableResolverFactory) : cVar.append(String.valueOf(org.mvel2.d.l(readFile(dVar, str, obj, variableResolverFactory), obj, variableResolverFactory)));
    }
}
