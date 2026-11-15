.class public Lorg/greenrobot/greendao/generator/DaoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private patternKeepFields:Ljava/util/regex/Pattern;

.field private patternKeepIncludes:Ljava/util/regex/Pattern;

.field private patternKeepMethods:Ljava/util/regex/Pattern;

.field private templateContentProvider:Lfreemarker/template/Template;

.field private templateDao:Lfreemarker/template/Template;

.field private templateDaoMaster:Lfreemarker/template/Template;

.field private templateDaoSession:Lfreemarker/template/Template;

.field private templateDaoUnitTest:Lfreemarker/template/Template;

.field private templateEntity:Lfreemarker/template/Template;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "greenDAO Generator"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "Copyright 2011-2016 Markus Junginger, greenrobot.de. Licensed under GPL V3."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "This program comes with ABSOLUTELY NO WARRANTY"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "INCLUDES"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepIncludes:Ljava/util/regex/Pattern;

    const-string v0, "FIELDS"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepFields:Ljava/util/regex/Pattern;

    const-string v0, "METHODS"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepMethods:Ljava/util/regex/Pattern;

    const-string v0, "dao.ftl"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->getConfiguration(Ljava/lang/String;)Lxe1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDao:Lfreemarker/template/Template;

    const-string v0, "dao-master.ftl"

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoMaster:Lfreemarker/template/Template;

    const-string v0, "dao-session.ftl"

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoSession:Lfreemarker/template/Template;

    const-string v0, "entity.ftl"

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateEntity:Lfreemarker/template/Template;

    const-string v0, "dao-unit-test.ftl"

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoUnitTest:Lfreemarker/template/Template;

    const-string v0, "content-provider.ftl"

    invoke-virtual {v1, v0}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateContentProvider:Lfreemarker/template/Template;

    return-void
.end method

.method private checkKeepSections(Ljava/io/File;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/greenrobot/greendao/generator/DaoUtil;->readAllBytes(Ljava/io/File;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepIncludes:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "keepIncludes"

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepFields:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "keepFields"

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lorg/greenrobot/greendao/generator/DaoGenerator;->patternKeepMethods:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "keepMethods"

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ".*^\\s*?//\\s*?KEEP "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".*?\n(.*?)^\\s*// KEEP "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " END.*?\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x28

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Ljava/util/Map;)V

    return-void
.end method

.method private generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/Template;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/generator/Schema;",
            "Lorg/greenrobot/greendao/generator/Entity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "schema"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p5, "entity"

    invoke-interface {v0, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_0

    .line 5
    invoke-interface {v0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/greenrobot/greendao/generator/DaoGenerator;->toJavaFilename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 7
    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p7

    invoke-virtual {p7}, Ljava/io/File;->mkdirs()Z

    if-eqz p6, :cond_1

    .line 8
    invoke-virtual {p6}, Lorg/greenrobot/greendao/generator/Entity;->getHasKeepSections()Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 9
    invoke-direct {p0, p5, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->checkKeepSections(Ljava/io/File;Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, p5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    invoke-virtual {p1, v0, p0}, Lfreemarker/template/Template;->H0(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 12
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 13
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Written "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 15
    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Data map for template: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Error while generating "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method private getConfiguration(Ljava/lang/String;)Lxe1;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lxe1;

    sget-object v1, Lxe1;->j0:Lfreemarker/template/Version;

    invoke-direct {v0, v1}, Lxe1;-><init>(Lfreemarker/template/Version;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {v0, p0, v1}, Lxe1;->Z0(Ljava/lang/Class;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;
    :try_end_0
    .catch Lfreemarker/template/TemplateNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/io/File;

    const-string v2, "src/main/resources/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "DaoGenerator/src/main/resources/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lxe1;->a1(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lxe1;->M0(Ljava/lang/String;)Lfreemarker/template/Template;

    :goto_0
    return-object v0

    :cond_1
    throw p0
.end method


# virtual methods
.method public generateAll(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generateAll(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateAll(Lorg/greenrobot/greendao/generator/Schema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v2, p2

    .line 3
    invoke-virtual {v8, v2}, Lorg/greenrobot/greendao/generator/DaoGenerator;->toFileForceExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/generator/DaoGenerator;->toFileForceExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object v12, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v8, v1}, Lorg/greenrobot/greendao/generator/DaoGenerator;->toFileForceExists(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_1
    move-object v13, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->init2ndPass()V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->init3rdPass()V

    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing schema version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getEntities()Ljava/util/List;

    move-result-object v14

    .line 10
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/greenrobot/greendao/generator/Entity;

    .line 11
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDao:Lfreemarker/template/Template;

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackageDao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getClassNameDao()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V

    .line 12
    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->isProtobuf()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->isSkipGeneration()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateEntity:Lfreemarker/template/Template;

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V

    :cond_3
    if-eqz v13, :cond_5

    .line 14
    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->isSkipGenerationTest()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackageTest()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getClassNameTest()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v8, v13, v3, v4}, Lorg/greenrobot/greendao/generator/DaoGenerator;->toJavaFilename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoUnitTest:Lfreemarker/template/Template;

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V

    goto :goto_3

    .line 20
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    :cond_5
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getContentProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/generator/ContentProvider;

    .line 22
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v1, "contentProvider"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateContentProvider:Lfreemarker/template/Template;

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getJavaPackage()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lorg/greenrobot/greendao/generator/Entity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ContentProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;Ljava/util/Map;)V

    goto :goto_4

    .line 25
    :cond_6
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoMaster:Lfreemarker/template/Template;

    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackageDao()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DaoMaster"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v5, p1

    .line 27
    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V

    .line 28
    iget-object v1, v8, Lorg/greenrobot/greendao/generator/DaoGenerator;->templateDaoSession:Lfreemarker/template/Template;

    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getDefaultJavaPackageDao()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/greenrobot/greendao/generator/Schema;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DaoSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v11

    .line 30
    invoke-direct/range {v0 .. v6}, Lorg/greenrobot/greendao/generator/DaoGenerator;->generate(Lfreemarker/template/Template;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/greenrobot/greendao/generator/Schema;Lorg/greenrobot/greendao/generator/Entity;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v9

    .line 32
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " entities in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toFileForceExists(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist. This check is to prevent accidental file generation into a wrong path."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toJavaFilename(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/16 p0, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".java"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
