.class public Lcom/transsion/xuanniao/account/center/view/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/o$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/io/File;

.field public d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public e:Lcom/transsion/xuanniao/account/center/view/o$c;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lcom/transsion/xuanniao/account/center/view/o$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->e:Lcom/transsion/xuanniao/account/center/view/o$c;

    invoke-static {p1}, Lhk7;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "avatar mkdirs"

    invoke-static {p2}, Lyq7;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->g()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 11

    const/16 v0, 0x1774

    const-string v1, "com.palm.id.log"

    const/4 v2, -0x1

    if-ne p1, v0, :cond_6

    if-ne p2, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Ljr7;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PortraitHelp:"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "file:///"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v4, "file"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "_data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ")"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p3, "_id"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move v5, v3

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/images/media/"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_4

    move-object v0, p3

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p3

    const-string v4, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "/1/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v4, p3

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    aget-object v4, p3, v5

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_5

    aget-object p3, p3, v5

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/center/view/o;->c(Landroid/net/Uri;)V

    goto/16 :goto_4

    :cond_6
    const/16 v0, 0x1775

    if-ne p1, v0, :cond_a

    if-ne p2, v2, :cond_a

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Ljr7;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xn.fileProvider"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v2, p3, v0}, Ljr7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/transsion/xuanniao/account/center/view/o;->c(Landroid/net/Uri;)V

    goto :goto_4

    :cond_8
    if-eqz p3, :cond_c

    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/transsion/xuanniao/account/center/view/o;->e(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p3}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p3, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_9
    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/o;->e:Lcom/transsion/xuanniao/account/center/view/o$c;

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-interface {p3, p0}, Lcom/transsion/xuanniao/account/center/view/o$c;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const/16 p3, 0x1776

    if-ne p1, p3, :cond_c

    if-ne p2, v2, :cond_c

    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p3}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/o;->e:Lcom/transsion/xuanniao/account/center/view/o$c;

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-interface {p3, p0}, Lcom/transsion/xuanniao/account/center/view/o$c;->a(Ljava/io/File;)V

    :cond_c
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PortraitHelp requestCode: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I[I)V
    .locals 3

    const/16 v0, 0x1777

    if-ne p1, v0, :cond_3

    array-length p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length p1, p2

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p2, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/o;->h()V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p1, p2, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_authorization_note:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_set:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lis7;

    invoke-direct {v0, p0}, Lis7;-><init>(Lcom/transsion/xuanniao/account/center/view/o;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lhs7;

    invoke-direct {v0, p0}, Lhs7;-><init>(Lcom/transsion/xuanniao/account/center/view/o;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 7

    const-string v0, "com.palm.id.log"

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v1}, Lvl7;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/transsion/xuanniao/account/center/view/o;->e(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {p1}, Ljr7;->j(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget p1, Lcom/transsion/xuanniao/account/R$string;->sd_card_not:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->e:Lcom/transsion/xuanniao/account/center/view/o$c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-interface {p1, p0}, Lcom/transsion/xuanniao/account/center/view/o$c;->a(Ljava/io/File;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "scale"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputX"

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "return-data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "noFaceDetection"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const/16 p1, 0x1776

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public d()Z
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    aput-object v2, v0, v5

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    aput-object v1, v0, v4

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    aput-object v2, v0, v5

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    :goto_0
    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v6, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v6, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const/16 v1, 0x1777

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v4
.end method

.method public final e(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/16 p1, 0x12c

    invoke-static {p2, p1, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p0, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    move-object v0, p2

    :goto_1
    :try_start_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    throw p0
.end method

.method public final f()Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v2}, Lhk7;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->a:Ljava/lang/String;

    return-object v1
.end method

.method public final g()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v1}, Lhk7;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xn.fileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->c:Ljava/io/File;

    invoke-static {v1, v0, v2}, Ljr7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->b:Landroid/net/Uri;

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_change_avatar_list_1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_change_avatar_list_2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    invoke-virtual {v1}, Lxj;->d1()V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/o;->d:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/o$b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/o$b;-><init>(Lcom/transsion/xuanniao/account/center/view/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->i([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/o$a;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/o$a;-><init>(Lcom/transsion/xuanniao/account/center/view/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method
