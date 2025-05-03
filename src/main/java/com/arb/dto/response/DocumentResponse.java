package com.arb.dto.response;

import com.arb.model.enumerate.Language;
import com.arb.model.enumerate.LetterType;
import com.arb.model.enumerate.Source;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/**
 * @author: Abd-alrhman Alkraien.
 * @Date: 7/4/2025
 * @Time: 10:49 AM
 */
@Data
@AllArgsConstructor
@Builder
public class DocumentResponse {

    private Long id;
    private String file;
    private Source source;
    private LetterType letterType;
    private Language reportLanguage;
}
