.class public Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    }
.end annotation


# instance fields
.field private posterKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_keys"
    .end annotation
.end field

.field private prefabricateBookmarkKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prefabricate_bookmark_keys"
    .end annotation
.end field

.field private resolveEntryKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolve_entry_keys"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosterKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->posterKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-object p0
.end method

.method public getPrefabricateBookmarkKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->prefabricateBookmarkKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-object p0
.end method

.method public getResolveEntryKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->resolveEntryKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-object p0
.end method

.method public setPosterKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->posterKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-void
.end method

.method public setPrefabricateBookmarkKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->prefabricateBookmarkKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-void
.end method

.method public setResolveEntryKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->resolveEntryKeys:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    return-void
.end method
