.class public final synthetic Lrcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lzcf;


# direct methods
.method public synthetic constructor <init>(Lzcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrcf;->a:Lzcf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lrcf;->a:Lzcf;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lzcf;->c(Lzcf;Ljava/util/Map;)Lim5;

    move-result-object p0

    return-object p0
.end method
