.class public Lcom/transsion/json/b/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/json/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/transsion/json/b/p;


# direct methods
.method public constructor <init>(Lcom/transsion/json/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/json/b/p$a;->b:Lcom/transsion/json/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/json/b/p$a;->a:Z

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/json/b/p$a;->a:Z

    return p0
.end method
