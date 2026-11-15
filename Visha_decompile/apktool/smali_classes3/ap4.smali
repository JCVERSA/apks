.class public final synthetic Lap4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lep4;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method public synthetic constructor <init>(Lep4;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/Preferences$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lap4;->b:Lep4;

    iput-object p2, p0, Lap4;->c:Ljava/lang/String;

    iput-object p3, p0, Lap4;->d:Ljava/lang/String;

    iput-object p4, p0, Lap4;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lap4;->b:Lep4;

    iget-object v1, p0, Lap4;->c:Ljava/lang/String;

    iget-object v2, p0, Lap4;->d:Ljava/lang/String;

    iget-object p0, p0, Lap4;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-static {v0, v1, v2, p0, p1}, Lep4;->b(Lep4;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/Preferences$Key;Landroidx/datastore/preferences/core/MutablePreferences;)Lzfb;

    move-result-object p0

    return-object p0
.end method
