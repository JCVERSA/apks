.class public Lo/uh1;
.super Lo/z80;


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Lo/bg5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/list/creator/[^/]+/snaplists"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/uh1;->c:Ljava/util/regex/Pattern;

    const-string v0, "/list/creator/[^/]+/videos"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/uh1;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lo/bg5;)V
    .locals 13

    const-class v0, Lcom/snaptube/premium/mixed_list/view/card/YoutubeShortsContentViewHolder;

    const-class v1, Lcom/snaptube/premium/viewholder/CollectionAdsVideoContainerViewHolder;

    const-class v2, Lo/k49;

    const-class v3, Lo/ue9;

    const-class v4, Lo/h42;

    const-class v5, Lo/p17;

    const-class v6, Lo/pw0;

    const-class v7, Lo/kc9;

    const-class v8, Lo/k7;

    invoke-direct {p0}, Lo/z80;-><init>()V

    iput-object p1, p0, Lo/uh1;->b:Lo/bg5;

    :try_start_0
    const-class p1, Lo/um7;

    const/16 v9, 0x7da

    const v10, 0x7f0c0128

    invoke-virtual {p0, v9, v10, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lo/r07;

    const/16 v9, 0x7d6

    const v10, 0x7f0c00d4

    invoke-virtual {p0, v9, v10, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lo/r73;

    const/16 v9, 0x7d7

    const v10, 0x7f0c00dc

    invoke-virtual {p0, v9, v10, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lo/pf;

    const/16 v9, 0xbb8

    const v10, 0x7f0c00a2

    invoke-virtual {p0, v9, v10, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const p1, 0x7f0c0083

    const/4 v9, 0x6

    invoke-virtual {p0, v9, p1, v8}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v9, 0x18

    invoke-virtual {p0, v9, p1, v8}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v9, 0xc

    invoke-virtual {p0, v9, p1, v8}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v9, 0x1c

    invoke-virtual {p0, v9, p1, v8}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v9, 0x1e

    const v10, 0x7f0c00c2

    invoke-virtual {p0, v9, v10, v6}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v9, Lo/l7;

    const/16 v10, 0x1d

    const v11, 0x7f0c0081

    invoke-virtual {p0, v10, v11, v9}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v9, Lo/f37;

    const/16 v10, 0x9

    const v11, 0x7f0c011b

    invoke-virtual {p0, v10, v11, v9}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const v9, 0x7f0c0114

    const/16 v10, 0xa

    invoke-virtual {p0, v10, v9, v5}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v10, Lo/fz6;

    const/16 v11, 0xb

    const v12, 0x7f0c0107

    invoke-virtual {p0, v11, v12, v10}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v10, Lo/sp8;

    const/16 v11, 0x3e9

    const v12, 0x7f0c00a4

    invoke-virtual {p0, v11, v12, v10}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v10, Lo/da2;

    const/16 v11, 0x7e4

    const v12, 0x7f0c00b0

    invoke-virtual {p0, v11, v12, v10}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v10, Lo/ea2;

    const/16 v11, 0x7e6

    const v12, 0x7f0c00b1

    invoke-virtual {p0, v11, v12, v10}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v10, Lo/x13;

    const/16 v11, 0x7e5

    const v12, 0x7f0c0134

    invoke-virtual {p0, v11, v12, v10}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v10, 0x496

    const v11, 0x7f0c00d0

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v10, 0x4b4

    const v11, 0x7f0c0138

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v10, 0x49a

    const v11, 0x7f0c03d3

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lo/u32;

    const/16 v10, 0x4a0

    const v11, 0x7f0c013c

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lcom/snaptube/premium/mixed_list/view/card/YoutubeHistoryListVideoHeaderCardViewHolder;

    const/16 v10, 0x4a1

    const v11, 0x7f0c013e

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v7, 0x4a2

    const v10, 0x7f0c013d

    invoke-virtual {p0, v7, v10, v4}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lo/zu7;

    const/16 v10, 0x4a3

    const v11, 0x7f0c012f

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lo/av7;

    const/16 v10, 0x4a4

    const v11, 0x7f0c0130

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lo/yu7;

    const/16 v10, 0x4a5

    const v11, 0x7f0c012d

    invoke-virtual {p0, v10, v11, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v7, Lo/g42;

    const v10, 0x7f0c012e

    const/16 v11, 0x4a6

    invoke-virtual {p0, v11, v10, v7}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const v7, 0x7f0c03dc

    const/16 v11, 0x4aa

    invoke-virtual {p0, v11, v7, v3}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v11, 0x4ac

    invoke-virtual {p0, v11, v7, v3}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v3, 0x7e8

    const v7, 0x7f0c00f0

    invoke-virtual {p0, v3, v7, v6}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v3, Lo/ka9;

    const/16 v6, 0x7e9

    const v7, 0x7f0c00ef

    invoke-virtual {p0, v6, v7, v3}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v3, 0x7ea

    const v6, 0x7f0c00ee

    invoke-virtual {p0, v3, v6, v4}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v3, Lo/xb4;

    const/16 v4, 0x4af

    invoke-virtual {p0, v4, v10, v3}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const v3, 0x7f0c013b

    const/16 v4, 0x4b1

    invoke-virtual {p0, v4, v3, v2}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v4, 0x4b0

    invoke-virtual {p0, v4, v3, v2}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class v2, Lo/z59;

    const/16 v3, 0x4ce

    const v4, 0x7f0c013a

    invoke-virtual {p0, v3, v4, v2}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const v2, 0x7f0c00d7

    const/16 v3, 0x5ea

    invoke-virtual {p0, v3, v2, v1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v3, 0x5f7

    invoke-virtual {p0, v3, v2, v1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 v1, 0x21

    invoke-virtual {p0, v1, p1, v8}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 p1, 0x4b9

    const v1, 0x7f0c0116

    invoke-virtual {p0, p1, v1, v0}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 p1, 0x4b8

    const v1, 0x7f0c011f

    invoke-virtual {p0, p1, v1, v0}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lo/af9;

    const/16 v0, 0x7fc

    const v1, 0x7f0c011e

    invoke-virtual {p0, v0, v1, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lcom/snaptube/search/view/viewholder/SearchPlayListHeroViewHolder;

    const/16 v0, 0x7f7

    const v1, 0x7f0c0113

    invoke-virtual {p0, v0, v1, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const/16 p1, 0x7f3

    invoke-virtual {p0, p1, v9, v5}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lo/gg9;

    const/16 v0, 0x60b

    const v1, 0x7f0c00ea

    invoke-virtual {p0, v0, v1, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;

    const-class p1, Lcom/snaptube/premium/mixed_list/view/card/YtbVideoAnimViewHolder;

    const/16 v0, 0x609

    const v1, 0x7f0c00eb

    invoke-virtual {p0, v0, v1, p1}, Lo/z80;->b(IILjava/lang/Class;)Lo/z80;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static A(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/NavigationManager;->z()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method public static B(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)V
    .locals 4

    invoke-static {p1}, Lo/ri0;->q(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/wandoujia/em/common/protomodel/Card;->cardId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    const/16 v2, 0x4e22

    const-string v3, "cover_url"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x487

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_1
    const-string v0, "video_title"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x4e21

    invoke-static {p1, v1}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, v2}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/16 v0, 0x4e28

    invoke-static {p1, v0}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/16 v0, 0x4e38

    invoke-static {p1, v0}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lo/ri0;->h(Lcom/wandoujia/em/common/protomodel/Card;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid argument: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lo/uh1;->B(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)V

    invoke-static {p0, p1}, Lo/uh1;->A(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "isPlaylist"

    invoke-static {v1}, Lo/if9;->s(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getSnaptubeAppNativePathSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static y(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "from"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static z(Landroid/content/Intent;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "snaptubeapp.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lo/yj8;->n(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public C(Ljava/util/List;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/snaptube/premium/onlineaudio/OnlineAudioUtils;->b(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public G0(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/minibar/c;->a:Lcom/snaptube/premium/minibar/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/snaptube/premium/minibar/c;->y(Landroid/app/Activity;FZ)V

    return-void
.end method

.method public Z(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance p4, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {p4}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string p5, "Click"

    invoke-virtual {p4, p5}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object p4

    const-string p5, "fab_batch_download_btn"

    invoke-interface {p4, p5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p4

    const-string p5, "position_source"

    invoke-interface {p4, p5, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p4

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "batch_download_count"

    invoke-interface {p4, v0, p5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_0
    invoke-interface {p4}, Lo/ah3;->reportEvent()V

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p4, 0x0

    if-nez p1, :cond_2

    move-object p5, p4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    :goto_0
    invoke-static {p5}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/em/common/protomodel/Card;

    invoke-static {v2}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "from"

    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "jump_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p4

    move-object p4, p1

    move-object p1, v3

    goto :goto_2

    :cond_5
    move-object p1, p4

    :goto_2
    new-instance v1, Lo/pn0$a;

    invoke-direct {v1}, Lo/pn0$a;-><init>()V

    new-instance v2, Lo/pn0$c;

    invoke-direct {v2}, Lo/pn0$c;-><init>()V

    invoke-virtual {v2, p3}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lo/pn0$c;->h(Z)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p4}, Lo/pn0$c;->i(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p6}, Lo/pn0$c;->n(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {p3, p7}, Lo/pn0$c;->o(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p3

    invoke-virtual {v1, p3}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p3

    new-instance p4, Lo/pn0$b;

    invoke-direct {p4}, Lo/pn0$b;-><init>()V

    invoke-virtual {p4, p1}, Lo/pn0$b;->e(Ljava/lang/String;)Lo/pn0$b;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lo/pn0$b;->b(Ljava/util/List;I)Lo/pn0$b;

    move-result-object p1

    invoke-virtual {p1}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p5}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    :cond_6
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;)Lo/wz7;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lo/uh1;->z(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snaptube.intent.action.OPEN_WEBVIEW"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lo/uh1;->x(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "list"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, p2, v1, v2}, Lo/uh1;->v(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p2, "search"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, v1, v2}, Lo/uh1;->w(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playlistTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public final e(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110444

    invoke-static {p1, p2}, Lo/b88;->l(Landroid/content/Context;I)V

    return v0

    :cond_1
    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v0}, Lo/u08;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid argument: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mixed_list"

    invoke-static {p2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {p1}, Lo/az7;->v(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/snaptube/mixed_list/util/IntentDecoder;->b(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/exoplayer/impl/VideoDetailInfo;

    move-result-object v3

    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v3, :cond_5

    iput-object p4, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->g:Ljava/lang/String;

    :cond_5
    if-nez v3, :cond_6

    new-instance p1, Lo/pn0$a;

    invoke-direct {p1}, Lo/pn0$a;-><init>()V

    new-instance p2, Lo/pn0$b;

    invoke-direct {p2}, Lo/pn0$b;-><init>()V

    iget-wide v5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->y:J

    invoke-virtual {p2, v5, v6}, Lo/pn0$b;->f(J)Lo/pn0$b;

    move-result-object p2

    invoke-virtual {p2}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    new-instance p2, Lo/pn0$c;

    invoke-direct {p2}, Lo/pn0$c;-><init>()V

    invoke-virtual {p2, v1}, Lo/pn0$c;->e(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v2}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    return v4

    :cond_6
    if-eqz p5, :cond_8

    const-string p1, "card_pos"

    const/4 p2, -0x1

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_8

    :try_start_0
    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_7
    new-instance p2, Lorg/json/JSONObject;

    iget-object v1, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    new-instance p1, Lo/pn0$a;

    invoke-direct {p1}, Lo/pn0$a;-><init>()V

    new-instance p2, Lo/pn0$b;

    invoke-direct {p2}, Lo/pn0$b;-><init>()V

    if-nez p5, :cond_9

    const-string p5, ""

    goto :goto_3

    :cond_9
    const-string v0, "from"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :goto_3
    invoke-virtual {p2, p5}, Lo/pn0$b;->e(Ljava/lang/String;)Lo/pn0$b;

    move-result-object p2

    iget-wide v0, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->y:J

    invoke-virtual {p2, v0, v1}, Lo/pn0$b;->f(J)Lo/pn0$b;

    move-result-object p2

    invoke-virtual {p2}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object p1

    new-instance p2, Lo/pn0$c;

    invoke-direct {p2}, Lo/pn0$c;-><init>()V

    iget-object p5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->n:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lo/pn0$c;->e(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    iget-object p5, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->i:Ljava/lang/String;

    invoke-virtual {p2, p5}, Lo/pn0$c;->t(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lo/uh1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lo/pn0$c;->k(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lo/pn0$c;->l(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pn0$c;->g(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    const-string p3, "normal"

    invoke-virtual {p2, p3}, Lo/pn0$c;->q(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {v3}, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->b()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/pn0$c;->p(Ljava/util/Map;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object p1

    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/pn0$a;->d(Ljava/lang/String;)Lo/pn0$a;

    move-result-object p1

    iget-object p2, v3, Lcom/snaptube/exoplayer/impl/VideoDetailInfo;->n:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v2}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    return v4

    :cond_a
    :goto_4
    invoke-static {p1, v1, v3, v4, p4}, Lcom/snaptube/premium/NavigationManager;->P0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return v0
.end method

.method public final f(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110444

    invoke-static {p1, p2}, Lo/b88;->l(Landroid/content/Context;I)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p5, p4, v0}, Lo/u08;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p5, "invalid intent: "

    const-string v2, "mixed_list"

    if-nez p4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v3, "snaptubeapp.com"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p4

    const-string v3, "_package.local"

    invoke-static {p4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const-string p4, "/list/"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-class p3, Lcom/snaptube/premium/activity/MultiSelectActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p3, 0x4000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return v0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final g(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lo/uh1;->e(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final h(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "pos"

    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lo/ri0;->w(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/ri0;->A(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final i(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110444

    invoke-static {p1, p2}, Lo/b88;->l(Landroid/content/Context;I)V

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1104c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/list/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/snaptube/premium/activity/MultiSelectActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final j(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_package.local"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/list/youtube"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const-string v0, "pos"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/snaptube/premium/NavigationManager;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    const-string v0, "/search_video_play"

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public final k(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-static/range {p2 .. p2}, Lo/ri0;->D(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lo/ri0;->o(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p2 .. p2}, Lo/ri0;->z(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v8, v0

    invoke-static/range {p2 .. p2}, Lo/ri0;->q(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "videoId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "feedSourceId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "specialId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "snaplistId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/wandoujia/em/common/protomodel/Card;->action:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v5

    :goto_0
    const-string v13, "creatorId"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "report_meta"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v5

    move-object/from16 v16, v4

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_2

    :cond_4
    move-object/from16 v13, v16

    :goto_2
    const-string v0, "pos"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p2 .. p2}, Lo/ri0;->w(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p2 .. p2}, Lo/ri0;->A(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    move-object v2, v0

    const-string v0, "dialog_style"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v0, "menu"

    :cond_7
    move-object v15, v0

    const/16 v0, 0x4e4c

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    const/16 v0, 0x4e4d

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v17, 0x1

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    :goto_4
    const/16 v0, 0x4e4e

    invoke-static {v1, v0}, Lo/ri0;->c(Lcom/wandoujia/em/common/protomodel/Card;I)Lcom/wandoujia/em/common/protomodel/CardAnnotation;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v5, v0, Lcom/wandoujia/em/common/protomodel/CardAnnotation;->stringValue:Ljava/lang/String;

    :cond_a
    move-object/from16 v18, v5

    goto :goto_5

    :cond_b
    move-object/from16 v18, v5

    const/16 v17, 0x0

    :goto_5
    new-instance v0, Lo/la7;

    invoke-direct {v0}, Lo/la7;-><init>()V

    invoke-virtual {v0, v2}, Lo/la7;->i(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lo/la7;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lo/la7;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lo/la7;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lo/la7;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lo/la7;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lo/la7;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lo/la7;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lo/la7;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lo/la7;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lo/la7;->j(Ljava/lang/String;)V

    const-string v1, "query"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->e(Ljava/lang/String;)V

    const-string v1, "query_from"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->f(Ljava/lang/String;)V

    if-eqz v4, :cond_e

    const-string v1, "card_pos"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 p3, v15

    const-string v15, "trigger_pos"

    if-nez v5, :cond_d

    invoke-virtual {v3, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    move-object/from16 v23, v4

    goto :goto_8

    :cond_d
    :goto_6
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v23, v4

    :try_start_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/la7;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    :goto_7
    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_e
    move-object/from16 v23, v4

    move-object/from16 p3, v15

    :goto_8
    const-string v0, "adapter_position"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v0, "playlist_video_count"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v0, "share_channel"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v1, v23

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v3, p3

    const/4 v2, 0x1

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-static/range {v4 .. v22}, Lcom/snaptube/premium/share/SharePopupFragment;->s3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/views/CommonPopupView$f;)Ljava/lang/Object;

    return v2
.end method

.method public final l(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "mixed_list"

    if-nez p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_package.local"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "snaptubeapp.com"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1, p2, v2, p4}, Lo/uh1;->o(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v3, "/detail"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/list/video/sync"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/detail/rcmd"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "/detail/sync_list/one_way"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v3, "/shorts"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2}, Lo/uh1;->p(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_6
    const-string v3, "/list/youtube/channel/videos"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {p0, p1, p2}, Lo/uh1;->u(Landroid/content/Context;Landroid/content/Intent;)V

    return v4

    :cond_7
    const-string v3, "/watch"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Lo/uh1;->q(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z

    move-result p1

    return p1

    :cond_8
    const-string p3, "/play_home"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "/setting_home"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "/search_hot_query"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string p3, "/list/youtube/playlist"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    const-string p3, "url"

    invoke-virtual {v2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/snaptube/premium/NavigationManager;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-static {p1, p3}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "intent"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    const-string p4, "/search_video_play"

    sget-object p5, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, p4, p2, p5}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_b
    const-string p3, "/list/youtube/history"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_19

    const-string p3, "/list/youtube/watchlater"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_19

    const-string p3, "/list/youtube/me/playlist"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string p3, "/list/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-class p3, Lcom/snaptube/premium/activity/CommonMixedListActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    const-string p3, "/tab/search"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string p5, "/search_mixed_result"

    invoke-virtual {p3, p1, p5, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_e
    const-string p3, "/tab/creators"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const-class p5, Lcom/snaptube/premium/activity/CommonMultiTabActivity;

    const-string v2, "/search_ytb_user"

    const-string v3, "data"

    const/high16 v5, 0x4000000

    if-eqz p3, :cond_10

    const p3, 0x7f1101dd

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "title"

    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v2, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_f
    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_10
    const-string p3, "/tab/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p4, Lcom/snaptube/premium/navigator/LaunchFlag;->STANDARD:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v2, p2, p4}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_11
    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_12
    const-string p3, "/explore/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-class p3, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_13
    const-string p3, "/web"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    const-class p3, Lcom/snaptube/premium/webview/common/CommonWebActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_14
    const-string p3, "/zendesk/feedback"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_15

    const-string p4, "pos"

    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "feedback_push_local"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    sget-object p4, Lo/vh9;->a:Lo/vh9;

    invoke-virtual {p4, p3}, Lo/vh9;->d(Landroid/net/Uri;)V

    :cond_15
    const-class p3, Lcom/snaptube/premium/activity/ZendeskPushActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lo/th9;->g()Z

    move-result p3

    if-nez p3, :cond_16

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/snaptube/premium/app/PhoenixApplication;->F()Lo/bg5;

    move-result-object p3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p4

    invoke-virtual {p4}, Lcom/snaptube/premium/app/PhoenixApplication;->b()Lcom/snaptube/premium/app/d;

    move-result-object p4

    invoke-interface {p4}, Lcom/snaptube/premium/app/d;->x0()Lo/gh2$a;

    move-result-object p4

    new-instance p5, Lo/kh2;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Lo/kh2;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4, p5}, Lo/th9;->f(Lo/bg5;Lo/gh2$a;Lo/jc3;)V

    :cond_16
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return v4

    :cond_17
    invoke-static {p4}, Lo/uh1;->t(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown path: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_18
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_19
    :goto_1
    invoke-virtual {p0, p1, p2}, Lo/uh1;->u(Landroid/content/Context;Landroid/content/Intent;)V

    return v4

    :cond_1a
    :goto_2
    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object p5, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TASK:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, p4, p2, p5}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return v4

    :cond_1b
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p5}, Lo/uh1;->n(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_4
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public l0(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1, p3, p2}, Lo/uh1;->m(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lo/uh1;->b:Lo/bg5;

    const-string p2, "click_log"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo/lg5;->b(Lo/bg5;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final m(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p2}, Lo/uh1;->z(Landroid/content/Intent;)V

    invoke-static {p1, p2}, Lo/b13;->a(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntentImpl: intent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/yq3;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mixed_list"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lo/vy2;->p(Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lo/vy2;->k()Lo/vy2;

    move-result-object p1

    invoke-virtual {p1}, Lo/vy2;->r()V

    return v4

    :cond_1
    const-string v3, "snaptube.intent.action.SHOW_UPGRADE_DIALOG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class p3, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return v4

    :cond_2
    const-string v3, "phoenix.intent.action.SUBSCRIBE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, p2, p3}, Lo/ru7;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z

    return v4

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    const-string v3, "pos"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Lo/uh1;->l(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    const-string v3, "snaptube.intent.action.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2, v9}, Lo/uh1;->j(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    const-string v3, "snaptube.intent.action.OPEN_WEBVIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_7
    const-string v3, "snaptube.intent.action.DOWNLOAD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v9, v10

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lo/uh1;->g(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_8
    const-string v3, "snaptube.intent.action.SHARE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1, p3, v8, p2}, Lo/uh1;->k(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_9
    const-string v3, "snaptube.intent.action.GET_SHARE_POS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1, p3, v8, p2}, Lo/uh1;->h(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_a
    const-string p3, "snaptube.intent.action.DOWNLOAD_ALL"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lo/uh1;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    const-string p3, "snaptube.intent.action.SEND_RXBUS_EVENT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const-string p3, "rxbus_event"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    return v4

    :cond_c
    const-string p3, "phoenix.intent.action.EXPLORE_NAVIGATE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    return v4

    :cond_d
    const-string p3, "snaptube.intent.action.LISTEN_ALL"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p0, p1, p2}, Lo/uh1;->i(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleIntentImpl: unknown intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final n(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "url"

    invoke-virtual {p4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid argument: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lo/g86;->f()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0, p2}, Lo/uh1;->s(Landroid/content/Intent;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p3, Lcom/snaptube/premium/activity/ExploreActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {p2, p3}, Lo/uh1;->B(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final o(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "details"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->U(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "dy5eez9gc3kot.cloudfront.net"

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "web_type"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class p3, Lcom/snaptube/premium/webview/common/CommonWebActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "url"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "hybrid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/snaptube/premium/hybrid/HybridWebViewActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "hide_toolbar"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "arg_key_should_hide_toolbar"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "title"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "arg_key_title"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v2

    :cond_4
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_5
    const-class p3, Lcom/snaptube/premium/activity/YoutubeVideoWebViewActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    return v2

    :cond_6
    invoke-static {p1, p2}, Lcom/snaptube/premium/NavigationManager;->S0(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final p(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string v2, "/shorts_play"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final q(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z
    .locals 2

    invoke-static {p1, p2, p3}, Lo/uh1;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Landroid/content/Intent;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lo/uh1;->r(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "intent"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p3, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    const-string v0, "/search_video_play"

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->SINGLE_TOP:Lcom/snaptube/premium/navigator/LaunchFlag;

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final r(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "phoenix.intent.extra.IS_ACTIVITY_INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final s(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "push_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final u(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/navigator/STNavigator;->a:Lcom/snaptube/premium/navigator/STNavigator;

    invoke-static {p2}, Lcom/snaptube/premium/youtube/PlaylistVideoFragment;->p6(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p2

    sget-object v1, Lcom/snaptube/premium/navigator/LaunchFlag;->STANDARD:Lcom/snaptube/premium/navigator/LaunchFlag;

    const-string v2, "/videos"

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/snaptube/premium/navigator/STNavigator;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/snaptube/premium/navigator/LaunchFlag;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;
    .locals 4

    invoke-static {p3}, Lo/bl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, ""

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v2, "url"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lo/uh1;->y(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x2

    const-class v3, Lcom/snaptube/mixed_list/fragment/ChannelsFragment;

    if-ne p3, v2, :cond_3

    const/4 p3, 0x1

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "channels"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, p4, v3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_3
    const-string p3, "/list/music/artist/albums"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/mixed_list/fragment/AlbumsFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_4
    const-string p3, "/list/richFeedStream"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/snaptube/premium/ads/a;->a0()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p3

    new-instance p4, Lcom/wandoujia/base/utils/RxBus$d;

    const/16 v1, 0x402

    invoke-direct {p4, v1}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {p3, p4}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    invoke-static {v0}, Lcom/snaptube/premium/ads/a;->p0(Ljava/lang/String;)V

    :cond_5
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/StaggeredDiscoveryFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lo/uh1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, p4, v3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_7
    const-string p3, "/list/youtube/home"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p3

    new-instance p4, Lcom/wandoujia/base/utils/RxBus$d;

    const/16 v0, 0x426

    invoke-direct {p4, v0}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {p3, p4}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->J4()Z

    move-result p3

    if-eqz p3, :cond_8

    const-class p3, Lcom/snaptube/premium/fragment/moweb/YouTubeHomeWebFragment;

    goto :goto_3

    :cond_8
    const-class p3, Lcom/snaptube/premium/fragment/youtube/YouTubeHomeFragment;

    :goto_3
    new-instance p4, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p4, p1, v0, p3, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p4

    :cond_9
    const-string p3, "/list/youtube/channels"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/youtube/YtbListExpandFragment;

    if-eqz p3, :cond_a

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_a
    const-string p3, "/list/youtube/subscription"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p2, Lo/wz7;

    new-instance p3, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p3, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p4, Lcom/snaptube/premium/subscription/SubscriptionFragment;

    invoke-static {}, Lcom/snaptube/premium/subscription/SubscriptionFragment;->F5()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p2, p1, p3, p4, v0}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_b
    const-string p3, "/list/youtube/channel/channels"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_c
    const-string p3, "/list/youtube/channel/videos"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/youtube/YtbChannelVideosFragment;

    if-eqz p3, :cond_d

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_d
    const-string p3, "/list/youtube/channel/playlists"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_e
    const-string p3, "/list/youtube/channel/featured"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/youtube/YtbChannelFeaturedFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_f
    const-string p3, "/list/youtube/watch/tab_recommend"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/activity/YtbVideoDetailsFragment;

    if-eqz p3, :cond_10

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_10
    const-string p3, "/list/youtube/watch/tab_mix"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_11
    const-string p3, "/list/youtube/playlist"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_16

    const-string p3, "/list/youtube/mix"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_4

    :cond_12
    const-string p3, "/list/search"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-class p4, Lcom/snaptube/premium/fragment/PlayableListFragment;

    if-eqz p3, :cond_13

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_13
    const-string p3, "/list/playable"

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    new-instance p3, Lo/wz7;

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, p1, v0, p4, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_14
    const-string p3, "/list/search/home"

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/home/SearchHomeFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_15
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/fragment/youtube/AdCardInjectFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_16
    :goto_4
    new-instance p3, Lo/wz7;

    new-instance p4, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {p4, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/snaptube/premium/activity/YtbPlaylistFragment;

    invoke-direct {p3, p1, p4, v0, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3
.end method

.method public final w(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lo/wz7;
    .locals 8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pos"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snaptube/premium/search/MixedSearchResultFragment;->Z2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "phoenix.intent.extra.SEARCH_QUERY"

    invoke-virtual {v6, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "phoenix.intent.extra.SEARCH_FROM"

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "query_from"

    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/snaptube/premium/search/SearchConst$SearchType;->VIDEO:Lcom/snaptube/premium/search/SearchConst$SearchType;

    invoke-virtual {v4}, Lcom/snaptube/premium/search/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "phoenix.intent.extra.SEARCH_TYPE"

    invoke-virtual {v6, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "phoenix.intent.extra.SEARCH_TAB_NAME"

    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lo/bl;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "url"

    invoke-virtual {v6, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "search_site"

    invoke-virtual {v6, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "web"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/GCSWebViewWrapperFragment;

    invoke-static {v1}, Lcom/snaptube/premium/fragment/GCSWebViewWrapperFragment;->L2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p2, p3, v0, p1, v1}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_1
    const-string p2, "youtube"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v5, "phoenix.intent.extra.CONTENT_TYPE"

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->E4()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "ytb_webview_search"

    invoke-virtual {p2, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "show_toolbar"

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/YouTubeSearchFragment;

    invoke-direct {p3, v0, v1, p1, p2}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_2
    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->YOUTUBE:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->g4()Z

    move-result p2

    if-eqz p2, :cond_3

    const-class p2, Lcom/snaptube/premium/fragment/moweb/SearchVideoWebFragment;

    goto :goto_0

    :cond_3
    const-class p2, Lcom/snaptube/search/view/SearchVideoFragment;

    :goto_0
    new-instance p3, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p3, v0, v1, p2, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p3

    :cond_4
    const-string p2, "all"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->YOUTUBE:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchYoutubeAllFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_5
    const-string p2, "client_playlist"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->PLAYLIST:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchPlaylistFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_6
    const-string p2, "client_channel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->CHANNEL:Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;

    invoke-virtual {p2}, Lcom/snaptube/premium/search/SearchConst$YoutubeContentType;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v0, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/search/view/SearchChannelFragment;

    invoke-direct {p2, p3, v0, p1, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_7
    sget-object p2, Lo/rk7$c;->h:Lo/rk7$c;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-class v0, Lcom/snaptube/search/view/SearchSiteFragment;

    if-eqz p2, :cond_8

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_8
    sget-object p2, Lo/rk7$d;->h:Lo/rk7$d;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_9
    sget-object p2, Lo/rk7$b;->h:Lo/rk7$b;

    invoke-virtual {p2}, Lo/rk7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p3, v1, v0, v6}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2

    :cond_a
    return-object v2
.end method

.method public final x(Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)Lo/wz7;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pos"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "show_toolbar"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "url"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lo/wz7;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;

    invoke-direct {v1, p1}, Lcom/phoenix/extensions/PagerSlidingTabStrip$g;-><init>(Ljava/lang/CharSequence;)V

    const-class p1, Lcom/snaptube/premium/fragment/moweb/DefaultWebFragment;

    invoke-direct {p2, p3, v1, p1, v0}, Lo/wz7;-><init>(Ljava/lang/String;Lcom/phoenix/extensions/PagerSlidingTabStrip$g;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p2
.end method
