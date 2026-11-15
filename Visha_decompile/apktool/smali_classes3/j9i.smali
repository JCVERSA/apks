.class public final Lj9i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnhi;


# instance fields
.field public final a:Lb9i;

.field public final b:I


# direct methods
.method public synthetic constructor <init>(Lb9i;Ld9i;IZLk9i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9i;->a:Lb9i;

    iput p3, p0, Lj9i;->b:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lj9i;->b:I

    return p0
.end method

.method public final zzb()Lb9i;
    .locals 0

    iget-object p0, p0, Lj9i;->a:Lb9i;

    return-object p0
.end method
