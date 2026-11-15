.class public final Lgqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liqi;


# instance fields
.field public final a:Luqi;


# direct methods
.method public synthetic constructor <init>(Luqi;Ljqi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqi;->a:Luqi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lgqi;->a:Luqi;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Luqi;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
