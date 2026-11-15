.class public final Ldq8;
.super Lfq8;
.source "SourceFile"

# interfaces
.implements Lm75;


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfq8;-><init>()V

    iput-object p1, p0, Ldq8;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public K()Z
    .locals 0

    invoke-virtual {p0}, Ldq8;->R()Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic P()Ljava/lang/reflect/Member;
    .locals 0

    invoke-virtual {p0}, Ldq8;->R()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Ldq8;->a:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public S()Llq8;
    .locals 2

    sget-object v0, Llq8;->a:Llq8$a;

    invoke-virtual {p0}, Ldq8;->R()Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v1, "member.genericType"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getType()Lo85;
    .locals 0

    invoke-virtual {p0}, Ldq8;->S()Llq8;

    move-result-object p0

    return-object p0
.end method
