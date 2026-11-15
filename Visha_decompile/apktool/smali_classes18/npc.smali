.class public abstract Lnpc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultObjectWrapper:Lgc7;


# instance fields
.field private objectWrapper:Lgc7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz22;->h0:Lz22;

    sput-object v0, Lnpc;->defaultObjectWrapper:Lgc7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lnpc;->defaultObjectWrapper:Lgc7;

    invoke-direct {p0, v0}, Lnpc;-><init>(Lgc7;)V

    return-void
.end method

.method public constructor <init>(Lgc7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lnpc;->defaultObjectWrapper:Lgc7;

    :goto_0
    iput-object p1, p0, Lnpc;->objectWrapper:Lgc7;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lz22;

    invoke-direct {p1}, Lz22;-><init>()V

    sput-object p1, Lnpc;->defaultObjectWrapper:Lgc7;

    iput-object p1, p0, Lnpc;->objectWrapper:Lgc7;

    :cond_1
    return-void
.end method

.method public static getDefaultObjectWrapper()Lgc7;
    .locals 1

    sget-object v0, Lnpc;->defaultObjectWrapper:Lgc7;

    return-object v0
.end method

.method public static setDefaultObjectWrapper(Lgc7;)V
    .locals 0

    sput-object p0, Lnpc;->defaultObjectWrapper:Lgc7;

    return-void
.end method


# virtual methods
.method public getObjectWrapper()Lgc7;
    .locals 0

    iget-object p0, p0, Lnpc;->objectWrapper:Lgc7;

    return-object p0
.end method

.method public setObjectWrapper(Lgc7;)V
    .locals 0

    iput-object p1, p0, Lnpc;->objectWrapper:Lgc7;

    return-void
.end method

.method public final wrap(Ljava/lang/Object;)Lzfa;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object p0, p0, Lnpc;->objectWrapper:Lgc7;

    invoke-interface {p0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method
