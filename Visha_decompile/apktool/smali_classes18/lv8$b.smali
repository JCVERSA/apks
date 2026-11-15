.class public Llv8$b;
.super Llv8$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final e:Ljava/util/List;


# instance fields
.field public d:Lzfa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Llv8$a;->c:Ljava/util/List;

    const-string v1, "sharedVariables"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Llv8$d;->b(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Llv8$b;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lxe1;)V
    .locals 0

    invoke-direct {p0, p1}, Llv8$a;-><init>(Lfreemarker/core/Configurable;)V

    new-instance p1, Lmv8;

    invoke-direct {p1, p0}, Lmv8;-><init>(Llv8$b;)V

    iput-object p1, p0, Llv8$b;->d:Lzfa;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    sget-object p0, Llv8$b;->e:Ljava/util/List;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 1

    const-string v0, "sharedVariables"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Llv8$b;->d:Lzfa;

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Llv8$a;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method
