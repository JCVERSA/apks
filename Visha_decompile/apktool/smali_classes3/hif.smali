.class public final synthetic Lhif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhif;->a:[B

    return-void
.end method


# virtual methods
.method public final zza()Lv9i;
    .locals 1

    sget v0, Lrif;->x:I

    new-instance v0, Lu5i;

    iget-object p0, p0, Lhif;->a:[B

    invoke-direct {v0, p0}, Lu5i;-><init>([B)V

    return-object v0
.end method
