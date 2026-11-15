.class public final synthetic Lnif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final synthetic a:Lt8i;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lt8i;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnif;->a:Lt8i;

    iput-object p2, p0, Lnif;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lv9i;
    .locals 3

    sget v0, Lrif;->x:I

    iget-object v0, p0, Lnif;->a:Lt8i;

    invoke-interface {v0}, Lt8i;->zza()Lv9i;

    move-result-object v0

    new-instance v1, Lu5i;

    iget-object p0, p0, Lnif;->b:[B

    invoke-direct {v1, p0}, Lu5i;-><init>([B)V

    new-instance v2, Lgif;

    array-length p0, p0

    invoke-direct {v2, v1, p0, v0}, Lgif;-><init>(Lv9i;ILv9i;)V

    return-object v2
.end method
