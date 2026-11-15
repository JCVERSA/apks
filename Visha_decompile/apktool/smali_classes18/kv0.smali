.class public final Lkv0;
.super Lu25;
.source "SourceFile"


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lu25;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lqq6;)Leh5;
    .locals 0

    invoke-virtual {p0, p1}, Lkv0;->d(Lqq6;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public final c(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const-string p0, "\\b"

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string p0, "\\t"

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    const-string p0, "\\n"

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    const-string p0, "\\f"

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_4

    const-string p0, "\\r"

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lkv0;->e(C)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-string p0, "?"

    :goto_0
    return-object p0
.end method

.method public d(Lqq6;)Lsm9;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lqq6;->o()Lkotlin/reflect/jvm/internal/impl/builtins/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/d;->u()Lsm9;

    move-result-object p0

    const-string p1, "module.builtIns.charType"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result p0

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/16 p1, 0xd

    if-eq p0, p1, :cond_0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_0

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_0

    const/16 p1, 0x13

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lpf1;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p0, v1}, Lkv0;->c(C)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04X (\'%s\')"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(this, *args)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
