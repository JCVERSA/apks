.class public final Le6j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp8j;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lw4f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lwmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6j;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Lwmj;->F()Lw4f;

    move-result-object p1

    iput-object p1, p0, Le6j;->b:Lw4f;

    return-void
.end method


# virtual methods
.method public final a(Lw4f;)V
    .locals 0

    iput-object p1, p0, Le6j;->b:Lw4f;

    return-void
.end method

.method public final zza()Lw4f;
    .locals 0

    iget-object p0, p0, Le6j;->b:Lw4f;

    return-object p0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le6j;->a:Ljava/lang/Object;

    return-object p0
.end method
