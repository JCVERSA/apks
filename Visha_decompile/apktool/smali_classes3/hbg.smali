.class public final Lhbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7g;


# instance fields
.field public final b:Lm0g;


# direct methods
.method public constructor <init>(Lm0g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbg;->b:Lm0g;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object p0, p0, Lhbg;->b:Lm0g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm0g;->F(Landroid/content/Context;)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method
