.class public Lwg8;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lwg8;->b:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lwg8;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lwg8;->b:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    const-string v0, "show_private_room"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lzdc;->l:Z

    sget-boolean p1, Lpp3;->p:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lzdc;->l:Z

    :cond_0
    sget-boolean p1, Lpp3;->p:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object p1

    new-instance v1, Lwg8$a;

    invoke-direct {v1, p0}, Lwg8$a;-><init>(Lwg8;)V

    invoke-virtual {p1, v1}, Ltg8;->g(Luv4;)V

    return-object v0
.end method
