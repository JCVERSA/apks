.class public final synthetic Lh7g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5g;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7g;->a:Ljava/lang/String;

    iput-object p2, p0, Lh7g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr7g;

    iget-object v0, p0, Lh7g;->a:Ljava/lang/String;

    iget-object p0, p0, Lh7g;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lr7g;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
