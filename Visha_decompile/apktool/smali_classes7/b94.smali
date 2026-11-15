.class public final synthetic Lb94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/apache/commons/lang3/Functions$FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb94;->b:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lb94;->b:Lorg/apache/commons/lang3/Functions$FailableRunnable;

    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->l(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method
