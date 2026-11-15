.class public final Lcom/transsion/ad/monopoly/intercept/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/monopoly/intercept/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/monopoly/intercept/a;

.field private b:Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/monopoly/intercept/a;)Lcom/transsion/ad/monopoly/intercept/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->b:Lcom/transsion/ad/monopoly/intercept/a;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->b:Lcom/transsion/ad/monopoly/intercept/a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/transsion/ad/monopoly/intercept/a;->a(Lcom/transsion/ad/monopoly/intercept/a;Lcom/transsion/ad/monopoly/intercept/a;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->b:Lcom/transsion/ad/monopoly/intercept/a;

    .line 18
    .line 19
    return-object p0
.end method

.method public final b()Lcom/transsion/ad/monopoly/intercept/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/monopoly/intercept/a$a;->a:Lcom/transsion/ad/monopoly/intercept/a;

    .line 2
    .line 3
    return-object v0
.end method
