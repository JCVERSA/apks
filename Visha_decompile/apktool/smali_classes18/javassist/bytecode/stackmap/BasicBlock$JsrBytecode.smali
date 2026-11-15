.class Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;
.super Ljavassist/bytecode/BadBytecode;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "JSR"

    invoke-direct {p0, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    return-void
.end method
