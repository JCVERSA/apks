.class public Lpa/a$a$a;
.super Ls8/a;
.source "source.java"

# interfaces
.implements Lpa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls8/a;-><init>(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final w(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls8/a;->X0()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ls8/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ls8/a;->Y0(Landroid/os/Parcel;)Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p1, v0}, Ls8/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
