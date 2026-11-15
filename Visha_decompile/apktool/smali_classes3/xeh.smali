.class public final synthetic Lxeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lyeh;


# direct methods
.method public synthetic constructor <init>(Lyeh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxeh;->a:Lyeh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lxeh;->a:Lyeh;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lyeh;->a(Lyeh;Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
