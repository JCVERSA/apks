.class public final Lpji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnhi;


# instance fields
.field public final a:I

.field public final b:Lb9i;


# direct methods
.method public synthetic constructor <init>(Ld9i;ILb9i;ZLrji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lpji;->a:I

    iput-object p3, p0, Lpji;->b:Lb9i;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lpji;->a:I

    return p0
.end method

.method public final zzb()Lb9i;
    .locals 0

    iget-object p0, p0, Lpji;->b:Lb9i;

    return-object p0
.end method
