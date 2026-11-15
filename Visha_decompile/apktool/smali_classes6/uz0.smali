.class public final synthetic Luz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Luz0;->b:Z

    iput-object p2, p0, Luz0;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Luz0;->b:Z

    iget-object p0, p0, Luz0;->c:Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcom/transsion/cloudcore/cloudapi/impl/a;->b(ZLjava/lang/Integer;)V

    return-void
.end method
