.class public final synthetic Lcch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ldch;


# direct methods
.method public synthetic constructor <init>(Ldch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcch;->b:Ldch;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcch;->b:Ldch;

    invoke-static {p0}, Ldch;->a(Ldch;)Lgch;

    move-result-object p0

    return-object p0
.end method
