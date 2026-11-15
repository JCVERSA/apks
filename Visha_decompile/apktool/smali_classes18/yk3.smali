.class public interface abstract Lyk3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final D1:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 149

    const-string v147, "<KEEP_GOING>"

    const-string v148, "<LONE_LESS_THAN_OR_DASH>"

    const-string v0, "<EOF>"

    const-string v1, "<BLANK>"

    const-string v2, "<START_TAG>"

    const-string v3, "<END_TAG>"

    const-string v4, "<CLOSE_TAG1>"

    const-string v5, "<CLOSE_TAG2>"

    const-string v6, "<ATTEMPT>"

    const-string v7, "<RECOVER>"

    const-string v8, "<IF>"

    const-string v9, "<ELSE_IF>"

    const-string v10, "<LIST>"

    const-string v11, "<ITEMS>"

    const-string v12, "<SEP>"

    const-string v13, "<FOREACH>"

    const-string v14, "<SWITCH>"

    const-string v15, "<CASE>"

    const-string v16, "<ASSIGN>"

    const-string v17, "<GLOBALASSIGN>"

    const-string v18, "<LOCALASSIGN>"

    const-string v19, "<_INCLUDE>"

    const-string v20, "<IMPORT>"

    const-string v21, "<FUNCTION>"

    const-string v22, "<MACRO>"

    const-string v23, "<TRANSFORM>"

    const-string v24, "<VISIT>"

    const-string v25, "<STOP>"

    const-string v26, "<RETURN>"

    const-string v27, "<CALL>"

    const-string v28, "<SETTING>"

    const-string v29, "<COMPRESS>"

    const-string v30, "<COMMENT>"

    const-string v31, "<TERSE_COMMENT>"

    const-string v32, "<NOPARSE>"

    const-string v33, "<END_IF>"

    const-string v34, "<END_LIST>"

    const-string v35, "<END_ITEMS>"

    const-string v36, "<END_SEP>"

    const-string v37, "<END_RECOVER>"

    const-string v38, "<END_ATTEMPT>"

    const-string v39, "<END_FOREACH>"

    const-string v40, "<END_LOCAL>"

    const-string v41, "<END_GLOBAL>"

    const-string v42, "<END_ASSIGN>"

    const-string v43, "<END_FUNCTION>"

    const-string v44, "<END_MACRO>"

    const-string v45, "<END_COMPRESS>"

    const-string v46, "<END_TRANSFORM>"

    const-string v47, "<END_SWITCH>"

    const-string v48, "<ELSE>"

    const-string v49, "<BREAK>"

    const-string v50, "<SIMPLE_RETURN>"

    const-string v51, "<HALT>"

    const-string v52, "<FLUSH>"

    const-string v53, "<TRIM>"

    const-string v54, "<LTRIM>"

    const-string v55, "<RTRIM>"

    const-string v56, "<NOTRIM>"

    const-string v57, "<DEFAUL>"

    const-string v58, "<SIMPLE_NESTED>"

    const-string v59, "<NESTED>"

    const-string v60, "<SIMPLE_RECURSE>"

    const-string v61, "<RECURSE>"

    const-string v62, "<FALLBACK>"

    const-string v63, "<ESCAPE>"

    const-string v64, "<END_ESCAPE>"

    const-string v65, "<NOESCAPE>"

    const-string v66, "<END_NOESCAPE>"

    const-string v67, "<UNIFIED_CALL>"

    const-string v68, "<UNIFIED_CALL_END>"

    const-string v69, "<FTL_HEADER>"

    const-string v70, "<TRIVIAL_FTL_HEADER>"

    const-string v71, "<UNKNOWN_DIRECTIVE>"

    const-string v72, "<STATIC_TEXT_WS>"

    const-string v73, "<STATIC_TEXT_NON_WS>"

    const-string v74, "<STATIC_TEXT_FALSE_ALARM>"

    const-string v75, "\"${\""

    const-string v76, "\"#{\""

    const-string v77, "<token of kind 77>"

    const-string v78, "<token of kind 78>"

    const-string v79, "<token of kind 79>"

    const-string v80, "\">\""

    const-string v81, "\"]\""

    const-string v82, "\"-\""

    const-string v83, "<token of kind 83>"

    const-string v84, "<ESCAPED_CHAR>"

    const-string v85, "<STRING_LITERAL>"

    const-string v86, "<RAW_STRING>"

    const-string v87, "\"false\""

    const-string v88, "\"true\""

    const-string v89, "<INTEGER>"

    const-string v90, "<DECIMAL>"

    const-string v91, "\".\""

    const-string v92, "\"..\""

    const-string v93, "<DOT_DOT_LESS>"

    const-string v94, "\"..*\""

    const-string v95, "\"?\""

    const-string v96, "\"??\""

    const-string v97, "\"=\""

    const-string v98, "\"==\""

    const-string v99, "\"!=\""

    const-string v100, "\"+=\""

    const-string v101, "\"-=\""

    const-string v102, "\"*=\""

    const-string v103, "\"/=\""

    const-string v104, "\"%=\""

    const-string v105, "\"++\""

    const-string v106, "\"--\""

    const-string v107, "<LESS_THAN>"

    const-string v108, "<LESS_THAN_EQUALS>"

    const-string v109, "<ESCAPED_GT>"

    const-string v110, "<ESCAPED_GTE>"

    const-string v111, "\"+\""

    const-string v112, "\"-\""

    const-string v113, "\"*\""

    const-string v114, "\"**\""

    const-string v115, "\"...\""

    const-string v116, "\"/\""

    const-string v117, "\"%\""

    const-string v118, "<AND>"

    const-string v119, "<OR>"

    const-string v120, "\"!\""

    const-string v121, "\",\""

    const-string v122, "\";\""

    const-string v123, "\":\""

    const-string v124, "\"[\""

    const-string v125, "\"]\""

    const-string v126, "\"(\""

    const-string v127, "\")\""

    const-string v128, "\"{\""

    const-string v129, "\"}\""

    const-string v130, "\"in\""

    const-string v131, "\"as\""

    const-string v132, "\"using\""

    const-string v133, "<ID>"

    const-string v134, "<OPEN_MISPLACED_INTERPOLATION>"

    const-string v135, "<NON_ESCAPED_ID_START_CHAR>"

    const-string v136, "<ESCAPED_ID_CHAR>"

    const-string v137, "<ID_START_CHAR>"

    const-string v138, "<ASCII_DIGIT>"

    const-string v139, "\">\""

    const-string v140, "<EMPTY_DIRECTIVE_END>"

    const-string v141, "\">\""

    const-string v142, "\">=\""

    const-string v143, "<TERMINATING_WHITESPACE>"

    const-string v144, "<TERMINATING_EXCLAM>"

    const-string v145, "<TERSE_COMMENT_END>"

    const-string v146, "<MAYBE_END>"

    filled-new-array/range {v0 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyk3;->D1:[Ljava/lang/String;

    return-void
.end method
