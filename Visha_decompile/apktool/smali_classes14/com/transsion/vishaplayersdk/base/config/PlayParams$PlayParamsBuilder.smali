.class public final Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/base/config/PlayParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayParamsBuilder"
.end annotation


# instance fields
.field private contentid:Ljava/lang/String;

.field private startPosition:I

.field private videoid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aPlayParams()Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/vishaplayersdk/base/config/PlayParams;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;-><init>(Lw78;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->videoid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->d(Lcom/transsion/vishaplayersdk/base/config/PlayParams;Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->startPosition:I

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->c(Lcom/transsion/vishaplayersdk/base/config/PlayParams;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->contentid:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayParams;->b(Lcom/transsion/vishaplayersdk/base/config/PlayParams;Ljava/lang/String;)V

    return-object v0
.end method

.method public withContentid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->contentid:Ljava/lang/String;

    return-object p0
.end method

.method public withStartPosition(I)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->startPosition:I

    return-object p0
.end method

.method public withVideoid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayParams$PlayParamsBuilder;->videoid:Ljava/lang/String;

    return-object p0
.end method
