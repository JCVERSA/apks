.class public Lcom/app/hubert/guide/model/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/hubert/guide/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/app/hubert/guide/model/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/app/hubert/guide/model/b;

    invoke-direct {v0}, Lcom/app/hubert/guide/model/b;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/model/b$a;->a:Lcom/app/hubert/guide/model/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/app/hubert/guide/model/b;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/b$a;->a:Lcom/app/hubert/guide/model/b;

    return-object p0
.end method

.method public b(Lte7;)Lcom/app/hubert/guide/model/b$a;
    .locals 1

    iget-object v0, p0, Lcom/app/hubert/guide/model/b$a;->a:Lcom/app/hubert/guide/model/b;

    iput-object p1, v0, Lcom/app/hubert/guide/model/b;->c:Lte7;

    return-object p0
.end method

.method public c(Lsr8;)Lcom/app/hubert/guide/model/b$a;
    .locals 1

    iget-object v0, p0, Lcom/app/hubert/guide/model/b$a;->a:Lcom/app/hubert/guide/model/b;

    iput-object p1, v0, Lcom/app/hubert/guide/model/b;->b:Lsr8;

    return-object p0
.end method
