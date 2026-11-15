.class public final synthetic Luvi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgzi;


# instance fields
.field public final synthetic a:Lgxi;


# direct methods
.method public synthetic constructor <init>(Lgxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luvi;->a:Lgxi;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Luvi;->a:Lgxi;

    invoke-virtual {p0}, Lgxi;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
