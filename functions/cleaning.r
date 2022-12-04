cleaning <- function(data){
  data %>%
    select(-starts_with("Delta")) %>%
    select(-Comments) %>%
    clean_names() %>%
    remove_empty(c("rows", "cols"))
}


Adelie_Clean <- function(penguins_clean){
  penguins_clean %>%
    filter(species == "Adelie Penguin (Pygoscelis adeliae)", !is.na(sex) & !is.na(culmen_depth_mm) & !is.na(body_mass_g))
}