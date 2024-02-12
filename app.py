import folium
import streamlit as st
from folium.plugins import Fullscreen
from streamlit_folium import st_folium

user_input = st.text_input("Name of layer")

m = folium.Map(location=[39.949610, -75.150282], zoom_start=16)

toggle = st.checkbox('Show layer')
if toggle:
    folium.Marker(
        [39.949610, -75.150282], popup=user_input, tooltip=user_input
    ).add_to(m)

# enable fullscreen button
Fullscreen().add_to(m)


# call to render Folium map in Streamlit
st_data = st_folium(m, width=725)