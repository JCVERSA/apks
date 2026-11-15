.class public final synthetic Lteh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lueh;


# direct methods
.method public synthetic constructor <init>(Lueh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteh;->b:Lueh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lteh;->b:Lueh;

    invoke-static {p0}, Lueh;->a(Lueh;)Lseh;

    move-result-object p0

    return-object p0
.end method
