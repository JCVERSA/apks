.class public final Levi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lusi;


# static fields
.field public static final a:Lusi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Levi;

    invoke-direct {v0}, Levi;-><init>()V

    sput-object v0, Levi;->a:Lusi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    :cond_0
    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
