.class public final synthetic Lv84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/Functions$FailableSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/Functions$FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv84;->a:Lorg/apache/commons/lang3/Functions$FailableCallable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv84;->a:Lorg/apache/commons/lang3/Functions$FailableCallable;

    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableCallable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
