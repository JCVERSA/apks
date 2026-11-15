.class public Lmv8;
.super Llv8$d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Llv8$b;


# direct methods
.method public constructor <init>(Llv8$b;)V
    .locals 0

    iput-object p1, p0, Lmv8;->b:Llv8$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Llv8$d;-><init>(Lkv8;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lmv8;->b:Llv8$b;

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lxe1;

    invoke-virtual {p0}, Lxe1;->J0()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    iget-object p0, p0, Lmv8;->b:Llv8$b;

    iget-object p0, p0, Llv8$a;->b:Lfreemarker/core/Configurable;

    check-cast p0, Lxe1;

    invoke-virtual {p0, p1}, Lxe1;->I0(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method
