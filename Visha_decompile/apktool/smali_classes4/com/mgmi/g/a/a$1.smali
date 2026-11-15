.class Lcom/mgmi/g/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/g/a/a;->a(Lcom/mgmi/model/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/model/o;

.field final synthetic b:Lcom/mgmi/g/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/g/a/a;Lcom/mgmi/model/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/g/a/a$1;->b:Lcom/mgmi/g/a/a;

    iput-object p2, p0, Lcom/mgmi/g/a/a$1;->a:Lcom/mgmi/model/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/g/a/a$1;->b:Lcom/mgmi/g/a/a;

    iget-object p0, p0, Lcom/mgmi/g/a/a$1;->a:Lcom/mgmi/model/o;

    invoke-static {v0, p0}, Lcom/mgmi/g/a/a;->a(Lcom/mgmi/g/a/a;Lcom/mgmi/model/o;)V

    return-void
.end method
