.class public final synthetic Lg9a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->y(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method
